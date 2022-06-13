import 'package:flutter/material.dart';
import 'package:mortgageauction/services/mortgagelist_data.dart';

class MortgageList extends StatefulWidget {
  const MortgageList({Key? key}) : super(key: key);

  @override
  State<MortgageList> createState() => _MortgageListState();
}

class _MortgageListState extends State<MortgageList> {
  List<MortgageListData> locations = [
    MortgageListData(
        location: "Chennai",
        price: "12.5L",
        mortageAddress: "Annanagar Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-1.png"),
    MortgageListData(
        location: "Chennai",
        price: "52.5L",
        mortageAddress: "Adyar Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-2.png"),
    MortgageListData(
        location: "Chennai",
        price: "22.5L",
        mortageAddress: "Porur Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-3.png"),
    MortgageListData(
        location: "Chennai",
        price: "92.5L",
        mortageAddress: "T. Nagar Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-4.png"),
    MortgageListData(
        location: "Chennai",
        price: "65.5L",
        mortageAddress: "Besant Nagar Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-5.png"),
    MortgageListData(
        location: "Chennai",
        price: "2.5L",
        mortageAddress: "Red Hills Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-6.png"),
    MortgageListData(
        location: "Chennai",
        price: "22.5L",
        mortageAddress: "Avadi Chennai",
        mortageType: "Flat",
        mortageIcon: "che-mort-7.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 82, 82, 225),
        title: const Text('Select Mortgage'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/mortgageDetail',
                  );
                },
                title: Text(locations[index].mortageAddress),
                subtitle: Text(locations[index].mortageType +
                    " - Price : " +
                    locations[index].price),
                isThreeLine: true,
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'asserts/images/' + locations[index].mortageIcon)),
              ),
            );
          },
        ),
      ),
    );
  }
}
