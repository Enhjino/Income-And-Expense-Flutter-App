import 'package:flutter/material.dart';
 class SplashScreen extends StatelessWidget {
   const SplashScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     callDelay(context);
     return Center(
       child: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         color: const Color.fromRGBO(67, 136, 131, 1),
         alignment: Alignment.center,
         child: const Text("mono",
           style: TextStyle(fontFamily: 'Inter', fontSize: 50.0,color: Colors.white, decoration: TextDecoration.none,),
         ),
       ) ,

     );
     return const Placeholder();
   }
   Future callDelay(BuildContext context) async {
     await Future.delayed(const Duration(milliseconds: 5000), () {} );
     Navigator.pushNamed(context, "/onboarding");
   }
 }
 