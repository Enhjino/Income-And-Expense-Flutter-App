import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'splash.dart';
import 'onboarding.dart';
import 'home.dart';
import 'wallet.dart';
import 'add.dart';
import 'bill.dart';
import 'connect.dart';
import 'payment.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income and Expenses',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home_screen' : (context) => HomeScreen(),
        '/onboarding' : (context) => Onboarding(),
        '/wallet' : (context) => Wallet(),
        '/add_expense' : (context) => AddExpense(),
        '/bills' : (context) => BillDetails(),
        '/payment' : (context) => Payment(),
        '/connect' : (context) => ConnectWallet(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Inter'
      ),
    );
  }
}
