import 'package:flutter/material.dart';
import 'package:mortgageauction/services/location_data.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<LocationData> locations = [
    LocationData(location: 'Chennai', flag: 'chennai.png'),
    LocationData(location: 'Mumbai', flag: 'mumbai.png'),
    LocationData(location: 'Delhi', flag: 'delhi.png'),
    LocationData(location: 'Bangalore', flag: 'bangalore.png'),
    LocationData(location: 'Hyderabad', flag: 'hyderabad.png'),
    LocationData(location: 'Ahmedabad', flag: 'ahmedabad.png'),
    LocationData(location: 'Kolkata', flag: 'kolkata.png'),
    LocationData(location: 'Surat', flag: 'surat.png'),
    LocationData(location: 'Jaipur', flag: 'jaipur.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text('Select Location'),
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
                    '/auctionMortgageList',
                  );
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('asserts/images/' + locations[index].flag)),
              ),
            );
          },
        ),
      ),
    );
  }
}
