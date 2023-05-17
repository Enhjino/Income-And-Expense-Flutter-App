import 'package:flutter/material.dart';
import 'transaction.dart';
import 'wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> transactions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            top(),
            balanceBox(),

            transactionHistory(),
            sendAgain(),
          ],
        ),
      ),
    );
  }

  double income = 0;
  double expense = 0;
  var balance = 0;

  Widget top() {
    return Positioned(
        child: Stack(
      children: [
        Positioned(
          top: 0,
          child: Image.asset('assets/images/top.png'),
        ),
        const Positioned(
          top: 70,
          left: 340,
          child: Icon(
            Icons.notifications_none_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        Positioned(
            top: 70,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Good Afternoon,",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Enkhjin Oyungerel",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            )),
      ],
    ));
  }

  Widget balanceBox() {
    return Positioned(
      top: 155,
      left: 20,
      right: 20,
      child: Container(
        height: 200,
        width: 370,
        decoration: BoxDecoration(
          color: const Color(0xFF2F7E79),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total Balance ",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text(
                "\$$balance.00",
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: FloatingActionButton(
                              heroTag: null,
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(94, 143, 140, 1),
                              onPressed: () {},
                              child:
                                  const Icon(Icons.arrow_circle_down, size: 15),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Income",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "\$$income",
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: FloatingActionButton(
                              heroTag: null,
                              elevation: 0,
                              backgroundColor:
                                  const Color.fromRGBO(94, 143, 140, 1),
                              onPressed: () {},
                              child: const Icon(Icons.arrow_upward, size: 15),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Expenses",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "\$$expense",
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget transactionHistory() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 360,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Transactions History",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/wallet");
                  },
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: Colors.black87,
                      decoration: TextDecoration.none,
                    ),
                  ))
            ],
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height - 450,
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: transactions.length,
                itemBuilder: (BuildContext context, int index) {
                  final transaction = transactions[index];
                  return transaction;
                },
              )),
        ],
      ),
    );
  }

  Widget sendAgain() {
    return Positioned(
        left: 15,
        right: 15,
        bottom: 10,
        child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Send Again",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      TextButton(
                        onPressed: (() => {}),
                        child: const Text("See all",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54)),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/person1.png"),
                              radius: 200,
                            )),
                        FloatingActionButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/person2.png"),
                              radius: 200,
                            )),
                        FloatingActionButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/person3.png"),
                              radius: 200,
                            )),
                        FloatingActionButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/person4.png"),
                              radius: 200,
                            )),
                        FloatingActionButton(
                            onPressed: () {},
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/person5.png"),
                              radius: 200,
                            )),
                      ]),
                ],
              ),
            )));
  }
}
