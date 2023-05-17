import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [top(), back(), totalBox(), floatingButtons(), tab()],
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
              children:  [
                IconButton(
                  icon: const Icon(
                    Icons.navigate_before_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_screen');
                  },
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  "Wallet",
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
      top: 165,
      child: Container(
          height: MediaQuery.of(context).size.height - 165,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ))),
    );
  }

  var balance = 0;

  Widget totalBox() {
    return Positioned(
      top: 200,
      left: 156,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Total Balance ",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
            color: Color.fromRGBO(102, 102, 102, 1),
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "\$$balance.00",
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 30.0,
            color: Color.fromRGBO(34, 34, 34, 1),
          ),
        ),
      ]),
    );
  }

  Color accentColor = const Color.fromRGBO(85, 134, 131, 1);

  Widget floatingButtons() {
    ShapeBorder floatingButtonBorder = RoundedRectangleBorder(
        side: BorderSide(width: 1, color: accentColor),
        borderRadius: BorderRadius.circular(100));

    return Positioned(
        top: 320,
        left: 20,
        right: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/connect");
                  setState(() {});
                },
                shape: floatingButtonBorder,
                child: Icon(Icons.add, size: 24, color: accentColor),
              ),
              const SizedBox(height: 5),
              const Text(
                "Add",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color.fromRGBO(34, 34, 34, 1),
                  decoration: TextDecoration.none,
                ),
              ),
            ]),
            const SizedBox(width: 25),
            Column(children: [
              FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/connect");
                  setState(() {});
                },
                shape: floatingButtonBorder,
                child: Icon(Icons.qr_code, size: 24, color: accentColor),
              ),
              const SizedBox(height: 5),
              const Text(
                "Pay",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color.fromRGBO(34, 34, 34, 1),
                  decoration: TextDecoration.none,
                ),
              ),
            ]),
            const SizedBox(width: 25),
            Column(children: [
              FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/connect");
                  setState(() {});
                },
                shape: floatingButtonBorder,
                child: Icon(Icons.send, size: 24, color: accentColor),
              ),
              const SizedBox(height: 5),
              const Text(
                "Send",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color.fromRGBO(34, 34, 34, 1),
                  decoration: TextDecoration.none,
                ),
              ),
            ]),
          ],
        ));
  }
  Widget tab() {
    return Positioned(
        top:420,
      right: 20,
      left: 20,
      child:DefaultTabController(
      length: 2,
      child: Column(
        children: [Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(244, 247, 247,1),
          ),
          child:
           TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Set the border radius of the indicator box
                color: Colors.white, // Set the background color of the selected tab
              ),// Color of the selected tab indicator
              labelColor: Color.fromRGBO(102, 102, 102,1),
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Inter'), // Style for the selected tab label
              unselectedLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Inter'),
              tabs: [
            Tab(
        child: Text('Transactions', style: TextStyle(
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        color: Color.fromRGBO(34, 34, 34, 1),
    decoration: TextDecoration.none,
    ),),),
            Tab(
              child: Text('Upcoming Bills', style: TextStyle(
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

}
