import 'package:flutter/material.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            top(),
            back(),
          ],
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
                Icons.more_horiz,
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
                        Navigator.pushNamed(context, '/bill');
                      },
                    ),
                    SizedBox(width: 120,),
                    Text(
                      "Bill Payment",
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
          height: MediaQuery.of(context).size.height-165,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),))
      ) ,
    );
  }
}
