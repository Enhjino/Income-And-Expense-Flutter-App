import 'package:flutter/material.dart';
class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            top(),
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
                        Navigator.pushNamed(context, '/home_screen');
                      },
                    ),
                    SizedBox(width: 140,),
                    Text(
                      "Add Expense",
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
      left: 28,
      child: Container(
          height: MediaQuery.of(context).size.height-165,
          width: MediaQuery.of(context).size.width-56,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),))
      ) ,
    );
  }
}
