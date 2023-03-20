import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
//import http package manually

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-22.908318, -43.181929);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Procure Seu Professor'),
          backgroundColor: Colors.orange[500],

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFf45d27),
                      Color(0xFFf5851f),
                    ],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80)
                      )
                ),
child: Icon(Icons.person, size:100,),
              ),

              // UserAccountsDrawerHeader(
              //   accountName: Text("Flavio Gabriel"),
              //   accountEmail: Text("flaviogabriel@mail.com"),
              //   currentAccountPicture: CircleAvatar(
              //     child: Text("FG"),
              //   ),
              // ),
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //   ),
              //   child: Text('MENU'),
              // ),

              ListTile(
                minLeadingWidth: 20,
                contentPadding: EdgeInsets.only(left: 17, top: 30),
                autofocus: true,
                leading: Icon(Icons.search),
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Conta'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'Settings',
        //
        //     )
        //   ],
        // ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('App Bar'),
//       ),
//       drawer: const Drawer(),
//
//       ),
//       bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//         label: 'Home',
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//         label: 'Settings',
//         )
//       ],
//       ),
//     ),
//   );
//
// }
