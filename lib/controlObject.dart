import 'package:flutter/material.dart';

class ControlLight extends StatefulWidget {
  final String? lightName;
  const ControlLight({super.key, this.lightName});

  @override
  State<ControlLight> createState() => _ControlLightState();
}

class _ControlLightState extends State<ControlLight> {
  bool lightStatus = false;
  String _lightName = "";
  @override
  void initState() {
    super.initState();
    setState(() {
      _lightName = widget.lightName ?? "Light";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 10, top: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  _lightName,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Icon(
                    Icons.tungsten,
                    color: lightStatus ? Colors.yellow : Colors.grey,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Switch(
                    // This bool value toggles the switch.
                    value: lightStatus,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        lightStatus = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ControlFan extends StatefulWidget {
  final String? fanName;
  const ControlFan({super.key, this.fanName});

  @override
  State<ControlFan> createState() => _ControlFanState();
}

class _ControlFanState extends State<ControlFan> {
  bool fanStatus = false;
  String _fanName = "";
  @override
  void initState() {
    super.initState();
    setState(() {
      _fanName = widget.fanName ?? "Fan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 10, top: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  _fanName,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Icon(
                    Icons.wind_power,
                    color: fanStatus ? Colors.yellow : Colors.grey,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Switch(
                    // This bool value toggles the switch.
                    value: fanStatus,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        fanStatus = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ControlAirCon extends StatefulWidget {
  final String? acName;
  const ControlAirCon({super.key, this.acName});

  @override
  State<ControlAirCon> createState() => _ControlAirConState();
}

class _ControlAirConState extends State<ControlAirCon> {
  String _acName = "";
  bool acStatus = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      _acName = widget.acName ?? "AC";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 10, top: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  _acName,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Icon(
                    Icons.air,
                    color: acStatus ? Colors.yellow : Colors.grey,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Switch(
                    // This bool value toggles the switch.
                    value: acStatus,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        acStatus = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ControlDoor extends StatefulWidget {
  const ControlDoor({super.key});

  @override
  State<ControlDoor> createState() => _ControlDoorState();
}

class _ControlDoorState extends State<ControlDoor> {
  bool doorStatus = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 20, right: 10, top: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text(
                  "Garage Door",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Icon(
                    Icons.door_sliding,
                    color: doorStatus ? Colors.yellow : Colors.grey,
                    size: 50.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 0),
                  child: Switch(
                    // This bool value toggles the switch.
                    value: doorStatus,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        doorStatus = value;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
