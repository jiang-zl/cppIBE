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
//     double encrypt_cost = 0.0, decrypt_cost = 0.0;
//     std::default_random_engine e(std::random_device{}());
//     std::uniform_int_distribution<long long> u(LLONG_MIN, LLONG_MAX);

//     Client Alice("Alice@qq.com");
//     Client Jzl("martin.zl.jiang@foxmail.com");
//     Client Adv("adv@qq.com");

//     Alice.initIBEClient(pkgServer);
//     Jzl.initIBEClient(pkgServer);
//     Adv.initIBEClient(pkgServer);

//     ibe.keyExtract(Adv, pkgServer);

//     for (int i = 1; i <= round; ++i) {
//         std::string plain = std::to_string(u(e));
//         ibe.keyExtract(Jzl, pkgServer);
//         Alice.setMessage(plain);

//         auto e_st = std::chrono::high_resolution_clock::now();
//         ibe.encryption(Alice, Jzl, pkgServer);
//         auto e_ed = std::chrono::high_resolution_clock::now();
//         encrypt_cost += 1.0 * std::chrono::duration_cast<std::chrono::microseconds>(e_ed - e_st).count();

//         auto d_st = std::chrono::high_resolution_clock::now();
//         ibe.decryption(Jzl, pkgServer);
//         auto d_ed = std::chrono::high_resolution_clock::now();
//         decrypt_cost += 1.0 * std::chrono::duration_cast<std::chrono::microseconds>(d_ed - d_st).count();

//         // Verify the correctness
//         if (Jzl.message != plain) {
//             std::cout << "Error: decryption failed." << std::endl;
//         }

//         // Verify the security
//         Adv.setCiphertext(Jzl.ciphertext_first, Jzl.ciphertext_second);
//         ibe.decryption(Adv, pkgServer);
//         if (Adv.message == plain) {
//             std::cout << "Error: system is attacked." << std::endl;
//         }
//     }

//     std::cout << "=========================IBE TEST PASS=========================" << std::endl;

//     encrypt_cost = 1.0 / round * encrypt_cost;
//     decrypt_cost = 1.0 / round * decrypt_cost;

//     std::cout << "The total encryption cost is " << encrypt_cost / 1000.0 << " ms." << std::endl;
//     std::cout << "The total decryption cost is " << decrypt_cost / 1000.0 << " ms." << std::endl;

//     std::cout << "==============================================================" << std::endl;

//     return 0;
// }