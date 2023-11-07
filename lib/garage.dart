// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'controlObject.dart';

class Garage extends StatelessWidget {
  const Garage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff004aad),
          title: const Text('Garage'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Room status",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  )),
            ),
            // Expanded()
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
                          '37 \u2103',
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
                          '87 %',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15), //apply padding to all four sides
              child: Text("Room Control",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  )),
            ),
            ControlLight(
              key: UniqueKey(),
              lightName: "Light",
            ),
            ControlDoor(
              key: UniqueKey(),
            )
          ],
        ));
  }
}
