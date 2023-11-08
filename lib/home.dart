// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'livingroom.dart';
import 'bedroom.dart';
import 'garage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff004aad),
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              // handle the press
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Weather",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, bottom: 20, right: 10, top: 10),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.thermostat,
                          color: Colors.red,
                          size: 50.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Text(
                          '28 \u2103',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, bottom: 20, right: 10, top: 10),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.water_drop,
                          color: Colors.blue,
                          size: 50.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Text(
                          '57 %',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 15, bottom: 20, right: 10, top: 10),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            Icons.foggy,
                            color: Colors.grey,
                            size: 50.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                          Text(
                            'Cloudy',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Rooms",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  )),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: ListViewButtons(),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewButtons extends StatelessWidget {
  const ListViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return ListView(
            shrinkWrap: true,
            children: _generateContainers(context),
          );
        } else if (constraints.maxWidth < 900) {
          return GridView.count(
            childAspectRatio: (1 / .2),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount: 2,
            children: _generateContainers(context),
          );
        } else {
          return GridView.count(
            childAspectRatio: (1 / .4),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount: 6,
            children: _generateContainers(context),
          );
        }
      },
    );
  }
}

List<Widget> _generateContainers(BuildContext context) {
  return [
    OutlinedButton(
      child: const Text(
        'Living Room',
        style: TextStyle(color: Color(0xff004aad)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LivingRoom();
        }));
      },
    ),
    OutlinedButton(
      child: const Text(
        'Bedroom',
        style: TextStyle(color: Color(0xff004aad)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BedRoom();
        }));
        // Navigator.pop(context);
      },
    ),
    OutlinedButton(
      child: const Text(
        'Garage',
        style: TextStyle(color: Color(0xff004aad)),
      ),
      onPressed: () {
        // Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Garage();
        }));
      },
    ),
  ];
}
