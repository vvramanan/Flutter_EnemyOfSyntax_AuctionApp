import 'package:flutter/material.dart';
import 'package:mortgageauction/pages/choose_location.dart';
import 'package:mortgageauction/pages/loginscreen.dart';
import 'package:mortgageauction/pages/mortage_detail_screen.dart';
import 'package:mortgageauction/pages/mortgagelist.dart';
import 'package:mortgageauction/pages/thankyou_screen.dart';
import 'package:mortgageauction/pages/userscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginScreen(),
        '/userhome': (context) => const UserScreen(),
        '/location': (context) => const ChooseLocation(),
        '/auctionMortgageList': (context) => const MortgageList(),
        '/mortgageDetail': (context) => const MortgageDetailsScreen(),
        '/thankYouScreen': (context) => const ThankYouScreen(),
      },
    ),
  );
}
