import 'package:flutter/material.dart';
class ConnectWallet extends StatefulWidget {
  const ConnectWallet({Key? key}) : super(key: key);

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            top(),
            back(),
tab()         ,
            DebitCard()],
        ),
      ),
    );
  }
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
                right: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.navigate_before_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/wallet');
                      },
                    ),
                    const SizedBox(width: 70,),
                    const Text(
                      "Connect Wallet",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),

                  ],
                )),
          ],
        ));
  }
  Widget back() {
    return Positioned(
      top:165,
      child: Container(
          height: MediaQuery.of(context).size.height-145,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),))
      ) ,
    );
  }
  final List<bool> _toggleSelected = <bool>[true, false];
  Widget tab() {
    return Positioned(
        top:195,
        right: 20,
        left: 20,
        child:DefaultTabController(
            length: 2,
            child: Column(
                children: [Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(244, 247, 247,1),
                  ),
                  child:
                  TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), // Set the border radius of the indicator box
                        color: Colors.white, // Set the background color of the selected tab
                      ),// Color of the selected tab indicator
                      labelColor: const Color.fromRGBO(102, 102, 102,1),
                      labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Inter'), // Style for the selected tab label
                      unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                      tabs: [
                        const Tab(
                          child: Text('Cards', style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color.fromRGBO(34, 34, 34, 1),
                            decoration: TextDecoration.none,
                          ),),),
                        const Tab(
                          child: Text('Accounts', style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            color: Color.fromRGBO(34, 34, 34, 1),
                            decoration: TextDecoration.none,
                          ),),
                        )
                      ]),
                ),
                ]
            )));
  }
  Widget DebitCard() {
    return Positioned(
      top: 250,
      child: Stack(
          alignment: Alignment.center,
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/44.png',
                  // width: 400,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Image.asset(
                  'assets/images/Cards.png',
                  // width: 400,
                ),
              ),
            ],
          ),
        );
  }
}
