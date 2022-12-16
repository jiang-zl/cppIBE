#include "../include/PKGServer.h"

PKGServer::PKGServer() : isPKGInit(false) {

}

PKGServer::~PKGServer() {
    if (isPKGInit) {
        element_clear(pubKey);
        element_clear(prvKey);
        element_clear(g);
        pairing_clear(pairing);
    }
}