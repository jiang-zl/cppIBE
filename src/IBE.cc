#include "../include/IBE.h"
#include <gmpxx.h>

void IBE::setUp(PKGServer& pkgServer) {
    pkgServer.isPKGInit = true;
    
    // Setup the pairing with base parameters.
    char param[1024] = {'\0'};
    FILE* readFile = fopen("../parameters/pairing.param", "r");
    if (!readFile) {
        pbc_die("Error: parameters/pairing.param cannot be opened.");
    }
    size_t count = fread(param, 1, 1024, readFile);
    if (!count) {
        pbc_die("Error: input format error");
    }
    pairing_init_set_buf(pkgServer.pairing, param, count);

    // Init the generator and public/private key
    element_init_G2(pkgServer.g, pkgServer.pairing);
    element_init_Zr(pkgServer.prvKey, pkgServer.pairing);
    element_init_G2(pkgServer.pubKey, pkgServer.pairing);

    element_random(pkgServer.g);
    element_random(pkgServer.prvKey);
    element_mul_zn(pkgServer.pubKey, pkgServer.g, pkgServer.prvKey);
}

void IBE::keyExtract(Client& recv, PKGServer& pkgServer) {
    element_from_hash(recv.clientPubKey, (void*)recv.clientID.c_str(), (int)recv.clientID.size());
    element_mul_zn(recv.clientPrvKey, recv.clientPubKey, pkgServer.prvKey);
}

void IBE::encryption(Client& send, Client& recv, PKGServer& pkgServer) {
    element_t r;
    element_t gID;
    mpz_t mpzGID;

    element_init_Zr(r, pkgServer.pairing);
    element_init_GT(gID, pkgServer.pairing);
    mpz_init(mpzGID);

    // r = 0 after calling element_init_Zr, zero-element
    // element_printf("%B\n", r);
    element_random(r);
    // C1= rP
    element_mul_zn(recv.ciphertext_first, pkgServer.g, r);
    // C2= M^H((g_ID)^r), g_ID= e(clientPubKey, pubKey)
    element_pairing(gID, recv.clientPubKey, pkgServer.pubKey);
    element_pow_zn(gID, gID, r);
    element_to_mpz(mpzGID, gID);

    // only support the based-10 number
    mpz_set_str(recv.ciphertext_second, send.message.c_str(), 10);
    mpz_xor(recv.ciphertext_second, recv.ciphertext_second, mpzGID);

    element_clear(r);
    element_clear(gID);
    mpz_clear(mpzGID);
}

void IBE::decryption(Client& recv, PKGServer& pkgServer) {
    element_t HID;
    mpz_t result;

    element_init_GT(HID, pkgServer.pairing);
    mpz_init(result);

    element_pairing(HID, recv.clientPrvKey, recv.ciphertext_first);
    element_to_mpz(result, HID);
    mpz_xor(result, recv.ciphertext_second, result);
    __gmp_alloc_cstring resStr(
        mpz_get_str(0, 10, result)
    );
    recv.message = std::string(resStr.str);

    element_clear(HID);
    mpz_clear(result);
}

/*
    Implementation of Hess IBS scheme which is based on paper:
    "F. Hess. Efficient Identity Based Signature Schemes Based on Pairings."
    SAC 2002, LNCS 2595, Springer-Verlag, 2000
*/
void IBE::signature(Client& send, Client& recv, PKGServer& pkgServer) {
    element_t r, g_, T, tmp;

    element_init_Zr(r, pkgServer.pairing);
    element_init_G2(g_, pkgServer.pairing);
    element_init_GT(T, pkgServer.pairing);
    element_init_G2(tmp, pkgServer.pairing);

    element_random(r);
    element_random(g_);

    // T= e(g_, g)^r
    element_pairing(T, g_, pkgServer.g);
    element_pow_zn(T, T, r);

    // h= h(m||T)
    element_from_hash(recv.h, (unsigned char*)recv.message.c_str(), (int)recv.message.size());
    element_mul(recv.h, recv.h, T);

    // W= r*g_+h*d_ID
    element_mul_zn(recv.W, g_, r);
    element_mul(tmp, send.clientPrvKey, recv.h);
    element_add(recv.W, recv.W, tmp);

    element_clear(r);
    element_clear(g_);
    element_clear(T);
    element_clear(tmp);
}

bool IBE::verifySig(Client& send, Client& recv, PKGServer& pkgServer) {
    element_t tmp1, tmp2, tmp3, h_;

    element_init_GT(tmp1, pkgServer.pairing);
    element_init_GT(tmp2, pkgServer.pairing);
    element_init_G2(tmp3, pkgServer.pairing);
    element_init_GT(h_, pkgServer.pairing);

    // tmp1= e(W,g)
    element_pairing(tmp1, recv.W, pkgServer.g);
    // tmp2= e(Q_ID, -P_pub)^h
    element_neg(tmp3, pkgServer.pubKey);
    element_pairing(tmp2, send.clientPubKey, tmp3);
    element_pow_zn(tmp2, tmp2, recv.h);
    // tmp1= T= e(W,g)*e(Q_ID, -P_pub)^h
    element_mul(tmp1, tmp1, tmp2);

    // h_= h(m||T)
    element_from_hash(h_, (unsigned char*)recv.message.c_str(), (int)recv.message.size());
    element_mul(h_, h_, tmp1);

    // verify is correctness if and only if: h_ == recv.h ...
    if (!element_cmp(h_, recv.h)) {
        return true;
    }
    return false;
}

void IBE::keyAgreement(Client& send, Client& recv, PKGServer& pkgServer) {
    element_t s;
    element_t r;

    element_t TK2S;
    element_t TK2R;

    element_init_Zr(s, pkgServer.pairing);
    element_init_Zr(r, pkgServer.pairing);

    element_init_GT(TK2S, pkgServer.pairing);
    element_init_GT(TK2R, pkgServer.pairing);

    element_random(s);
    element_random(r);

    // receiver sends T_R= e(d_S, Q_R)^r to sender
    element_pairing(TK2S, recv.clientPrvKey, send.clientPubKey);
    element_pow_zn(TK2S, TK2S, r);
    element_set(send.SK, TK2S);

    // sender sends T_S= e(d_S, Q_R)^s to receiver
    element_pairing(TK2R, send.clientPrvKey, recv.clientPubKey);
    element_pow_zn(TK2R, TK2R, s);
    element_set(recv.SK, TK2R);
    
    // Session key SK= T_S^r= T_R^s
    element_pow_zn(send.SK, send.SK, s);
    element_pow_zn(recv.SK, recv.SK, r);

    element_clear(s);
    element_clear(r);
    element_clear(TK2S);
    element_clear(TK2R);
}