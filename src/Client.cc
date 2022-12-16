#include "../include/Client.h"

Client::Client(const std::string& id) 
    : clientID(id), isInitIBEClient(false), isInitIBSClient(false) {
    
}

void Client::initIBEClient(PKGServer& pkgServer) {
    element_init_G2(clientPubKey, pkgServer.pairing);
    element_init_G2(clientPrvKey, pkgServer.pairing);

    element_init_G2(ciphertext_first, pkgServer.pairing);
    mpz_init(ciphertext_second);

    isInitIBEClient = true;
}

void Client::initIBSClient(PKGServer& pkgServer) {
    // the initIBEClient(.) must be called before calling the initIBSClient
    initIBEClient(pkgServer);

    element_init_GT(h, pkgServer.pairing);
    element_init_G2(W, pkgServer.pairing);

    isInitIBSClient = true;
}

void Client::initKAClient(PKGServer& pkgServer) {
    // the initIBEClient(.) must be called before calling the initIBSClient
    initIBEClient(pkgServer);

    element_init_GT(SK, pkgServer.pairing);

    isInitKAClient = true;
}

void Client::setMessage(const std::string& msg) {
    message = msg;
}

std::string Client::getMessage() {
    return message;
}

void Client::setCiphertext(element_t c1, const mpz_t c2) {
    element_set(ciphertext_first, c1);
    mpz_set(ciphertext_second, c2);
}

Client::~Client() {
    if (isInitIBEClient) {
        element_clear(clientPubKey);
        element_clear(clientPrvKey);
        element_clear(ciphertext_first);
        mpz_clear(ciphertext_second);
    }
    if (isInitIBSClient) {
        element_clear(h);
        element_clear(W);
    }
    if (isInitKAClient) {
        element_clear(SK);
    }
}