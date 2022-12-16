// #include "../include/IBE.h"
// #include "../include/Client.h"
// #include "../include/PKGServer.h"

// #include <chrono>
// #include <iostream>
// #include <random>
// #include <string>
// #include <algorithm>

// int main() {
//     IBE ibe;
//     PKGServer pkgServer;

//     double keygen_cost = 0.0;
//     auto keygen_st = std::chrono::high_resolution_clock::now();
//     ibe.setUp(pkgServer);
//     auto keygen_ed = std::chrono::high_resolution_clock::now();
//     keygen_cost += 1.0 * std::chrono::duration_cast<std::chrono::microseconds>(keygen_ed - keygen_st).count();

//     std::cout << "==================SetUp is finished==================" << std::endl;
//     std::cout << "SetUp costs: " << keygen_cost / 1000.0 << " ms." << std::endl;

//     int round = 100;
//     double sig_cost = 0.0, ver_cost = 0.0;
//     std::default_random_engine e(std::random_device{}());
//     std::uniform_int_distribution<long long> u(LLONG_MIN, LLONG_MAX);

//     Client Alice("Alice@qq.com");
//     Client Jzl("martin.zl.jiang@foxmail.com");

//     Alice.initIBSClient(pkgServer);
//     Jzl.initIBSClient(pkgServer);

//     for (int i = 1; i <= round; ++i) {
//         std::string plain = std::to_string(u(e));
//         ibe.keyExtract(Jzl, pkgServer);
//         Jzl.setMessage(plain);

//         auto e_st = std::chrono::high_resolution_clock::now();
//         ibe.signature(Alice, Jzl, pkgServer);
//         auto e_ed = std::chrono::high_resolution_clock::now();
//         sig_cost += 1.0 * std::chrono::duration_cast<std::chrono::microseconds>(e_ed - e_st).count();

//         auto d_st = std::chrono::high_resolution_clock::now();
//         // Verify the correctness
//         if (!ibe.verifySig(Alice, Jzl, pkgServer)) {
//             std::cout << "Error: signature failed." << std::endl;
//         }
//         auto d_ed = std::chrono::high_resolution_clock::now();
//         ver_cost += 1.0 * std::chrono::duration_cast<std::chrono::microseconds>(d_ed - d_st).count();
//     }

//     std::cout << "=========================IBS TEST PASS=========================" << std::endl;

//     sig_cost = 1.0 / round * sig_cost;
//     ver_cost = 1.0 / round * ver_cost;

//     std::cout << "The total signature cost is " << sig_cost / 1000.0 << " ms." << std::endl;
//     std::cout << "The total verify cost is " << ver_cost / 1000.0 << " ms." << std::endl;

//     std::cout << "==============================================================" << std::endl;

//     return 0;
// }