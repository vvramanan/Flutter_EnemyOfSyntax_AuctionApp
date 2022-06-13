import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:google_fonts/google_fonts.dart';

class MortgageDetailsScreen extends StatefulWidget {
  const MortgageDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MortgageDetailsScreen> createState() => _MortgageDetailsScreenState();
}

class _MortgageDetailsScreenState extends State<MortgageDetailsScreen> {
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
                      _mortageScreenHeaderLabel(),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortageGalleryImages(),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageScreenLabel(),
                      const SizedBox(
                        height: 20,
                      ),
                      _mortgageDataRow("Bank", "India Bank"),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageDataRow("Address", "DLF Porur Chennai"),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageDataRow("Current Value", "25 L"),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageDataRow("Auction Price", "15 L"),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageDataRow("Documents Verified", "Yes"),
                      const SizedBox(
                        height: 15,
                      ),
                      _mortgageDataRow("Contact Number", "8899778899"),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/thankYouScreen');
                        },
                        icon: const Icon(Icons.add_business_rounded, size: 18),
                        label: const Text("Apply for Auction"),
                      ),
                      //_showAuctionMortageList(context),
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

  Widget _mortgageScreenLabel() {
    return Center(
      child: Text(
        "Flat For Auction",
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

  Widget _mortageGalleryImages() {
    return const Center(
      child: SizedBox(
        child: GalleryImage(
          titleGallery: 'Mortgage Images',
          imageUrls: [
            "https://media.istockphoto.com/photos/europe-modern-complex-of-residential-buildings-picture-id1165384568?s=612x612",
            "https://media.istockphoto.com/photos/apartment-modern-home-house-residential-complex-real-estate-outdoor-picture-id1084114212?s=612x612",
            "https://media.istockphoto.com/photos/modern-living-room-interior-3d-render-picture-id1293762741?s=612x612"
          ],
        ),
        height: 100,
      ),
    );
  }

  Widget _mortageScreenHeaderLabel() {
    return const Center(
      child: Text(
        "Mortgage Details",
        style: TextStyle(
          color: Color(0xff164276),
          fontWeight: FontWeight.w900,
          fontSize: 34,
        ),
      ),
    );
  }

  Widget _mortgageDataRow(String userDataHeaderText, String userDataValueText) {
    return Row(
      children: [
        Text(
          userDataHeaderText,
          style: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Color(0xff164276),
              fontWeight: FontWeight.w900,
              fontSize: 12,
            ),
          ),
        ),
        const Divider(
          height: 20,
          thickness: 5,
          indent: 20,
          endIndent: 0,
          color: Colors.black,
        ),
        Text(userDataValueText),
      ],
    );
  }
}
