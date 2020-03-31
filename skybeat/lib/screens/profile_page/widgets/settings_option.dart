import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsOption extends StatelessWidget {

  final String optionName;
  final Widget widget;

  SettingsOption({@required this.optionName,@required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        Text(
          "$optionName",
          style: TextStyle(color: Color(0xFFD1CFD5), fontSize: 18.0),
        ),
        Spacer(),
        widget,
        SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
