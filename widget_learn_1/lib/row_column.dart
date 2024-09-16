import 'package:flutter/material.dart';

class RowColum extends StatelessWidget {
  const RowColum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 218, 252),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 231, 218, 252),
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 218, 252),
                borderRadius: BorderRadius.circular(0),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "OVO",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text("Promo"),


                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgovo.png"),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        const Text("OVO Cash",
                            style: TextStyle(color: Colors.white)),
                        const Text("Total Saldo:",
                            style: TextStyle(color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Rp.1.000.000",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 231, 218, 252),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text("64 Poin"),
                            )
                          ],
                        )
                      ],

                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 244, 244),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(0),
                  width: 95,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Container(
                        hei
                        color: Colors.grey,
                      ),
                      const Text("Judul foto"),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Column(
                    children: [
                      Image(
                        image: AssetImage("assets/ts.jpg"),
                      ),
                      Text("Judul foto"),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 244, 244),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: const Row(),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(30),
            height: 400,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 247, 244, 244),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'My Wallet',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
