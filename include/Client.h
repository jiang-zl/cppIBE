#ifndef CPPIBE_INCLUDE_CLIENT_H
#define CPPIBE_INCLUDE_CLIENT_H

#include "PKGServer.h"

#include <string>
#include <algorithm>
#include <pbc/pbc.h>

class Client {
public:
    /*
        Based parameters of Clients
    */
    std::string clientID;

    /*
        IBE parameters of Clients
    */
    bool isInitIBEClient;
    // d_ID   = prvKey*HID
    element_t clientPrvKey;
    // pubKey = HID
    element_t clientPubKey;
    // plaintext
    std::string message;
    // ciphertext=(c1, c2)
    element_t ciphertext_first;
    mpz_t ciphertext_second;

    /*
        IBS parameters of Clients
    */
    bool isInitIBSClient;
    element_t W;
    element_t h;

    /*
        KeyAgreement parameters of Clients
    */
    bool isInitKAClient;
    // Session Key
    element_t SK;

public:
    Client(const std::string& id);

    void initIBEClient(PKGServer& pkgServer);

    void initIBSClient(PKGServer& pkgServer);

    void initKAClient(PKGServer& pkgServer);

    void setMessage(const std::string& msg);

    std::string getMessage();

    void setCiphertext(element_t c1, const mpz_t c2);

    ~Client();
};

#endif