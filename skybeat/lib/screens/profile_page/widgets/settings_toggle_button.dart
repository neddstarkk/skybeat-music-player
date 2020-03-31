import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsToggleButton extends StatefulWidget {
  @override
  _SettingsToggleButtonState createState() => _SettingsToggleButtonState();
}

class _SettingsToggleButtonState extends State<SettingsToggleButton> {
  bool setOption = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setOption = !setOption;
      },
      child: CupertinoSwitch(
        activeColor: Color(0xFFF5016A),
        value: setOption,
        onChanged: (value) {
          setState(() {
            setOption = value;
          });
        },
      ),
    );
  }
}
