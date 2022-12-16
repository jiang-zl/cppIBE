#ifndef CPPIBE_INCLUDE_PKGSERVER_H
#define CPPIBE_INCLUDE_PKGSERVER_H

#include <pbc/pbc.h>

class PKGServer {
public:
    bool isPKGInit;

    pairing_t pairing;

    element_t g;// generator
    element_t pubKey;
    element_t prvKey;

    PKGServer();
    ~PKGServer();
};

#endif