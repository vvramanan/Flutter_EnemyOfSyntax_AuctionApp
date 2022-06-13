import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Stack(children: [
              Positioned(
                top: -175,
                left: 0,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Color(0x304599ff),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: -10,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0x30cc33ff),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 50,
                    sigmaY: 50,
                  ),
                  child: Container(),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      _thankUScreenHeaderLabel(),
                      const SizedBox(
                        height: 25,
                      ),
                      _thankUScreenAssistanceContactLabel(),
                      const SizedBox(
                        height: 45,
                      ),
                      _thankUScreenReturnUserPage(),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _thankUScreenReturnUserPage() {
    return Center(
      child: TextButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/userhome');
        },
        icon: const Icon(Icons.person, size: 18),
        label: const Text("Return to User Screen"),
      ),
    );
  }

  Widget _thankUScreenAssistanceContactLabel() {
    return Center(
      child: Text(
        "Please contact +91-9876543210 for assistance.",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff164276),
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _thankUScreenHeaderLabel() {
    return Center(
      child: Text(
        "Thanks for Applying!",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff164276),
            fontWeight: FontWeight.w900,
            fontSize: 34,
          ),
        ),
      ),
    );
  }
}
