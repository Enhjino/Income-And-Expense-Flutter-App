import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Stack(
         alignment: Alignment.center,
         children: [
           Positioned(
             left: 0,
               right: 0,
               top: 0,
               child: Image.asset(
                 'assets/images/ob_bg.png',
                 // width: 400,
               ),
           ),
           Positioned(
             top: 100,
               child: Image.asset('assets/images/onboard.png'),),
           Positioned(
             top: 160,
             left: 260,
             child: Image.asset('assets/images/Donut.png'),),
           Positioned(
             top: 110,
             left: 50,
             child: Image.asset('assets/images/Coint.png'),),
           const Positioned(
             top: 610,
             child:  Text("Spend Smarter", style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w700, fontSize: 36.0,color: Color.fromRGBO(67, 136, 131, 1),decoration: TextDecoration.none,),
           ),
           ),
           const Positioned(
             top: 640,
             child:  Text("Save More", style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w700, fontSize: 36.0,color: Color.fromRGBO(67, 136, 131, 1),decoration: TextDecoration.none,),
             ),
           ),
           Positioned(
             top: 700,
               width: MediaQuery.of(context).size.width * 0.8,
               height: 50,
               child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: const Color.fromRGBO(106, 157, 152, 1),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),
                     ),
                   ),
                   onPressed: (){
                     Navigator.pushNamed(context, "/home_screen");
                   },
                   child: const Text("Get Started",style: TextStyle(fontSize: 18))
               )
           ),
           Positioned(
             top: 750,
               child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Text("Already have an account?"),
               TextButton(
                   onPressed: (){
                     setOnboard();
                   },
                   child: const Text("Log in")
               )
             ],
           ))

         ],
       ),
     ),
    );
  }
  Future<void> setOnboard() async{
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setBool("onboard", true);
  }
}


