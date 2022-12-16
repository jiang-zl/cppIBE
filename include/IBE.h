#ifndef CPPIBE_INCLUDE_IBE_H
#define CPPIBE_INCLUDE_IBE_H

#include "PKGServer.h"
#include "Client.h"
#include <pbc/pbc.h>
#include <iostream>

class IBE {
public:
    void setUp(PKGServer& pkgServer);

    void keyExtract(Client& recv, PKGServer& pkgServer);

    void encryption(Client& send, Client& recv, PKGServer& pkgServer);

    void decryption(Client& recv, PKGServer& pkgServer);

    void signature(Client& send, Client& recv, PKGServer& pkgServer);

    bool verifySig(Client& send, Client& recv, PKGServer& pkgServer);

    void keyAgreement(Client& send, Client& recv, PKGServer& pkgServer);
};

#endif