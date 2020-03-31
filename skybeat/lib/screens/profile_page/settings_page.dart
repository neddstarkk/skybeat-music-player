import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skybeat/screens/profile_page/widgets/settings_option.dart';
import 'package:skybeat/screens/profile_page/widgets/settings_toggle_button.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A171D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                  child: GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 10.0),
                  child: Text(
                    "Settings",
                    style: TextStyle(color: Color(0xFFD1CFD5), fontSize: 20),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                  child: GestureDetector(
                    child: Text(
                      "Feedback",
                      style: TextStyle(color: Color(0xFFD1CFD5), fontSize: 20),
                    ),
                    onTap: () {
                      print("Feedback button pressed");
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF201E24).withOpacity(0.9),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                SettingsOption(
                  optionName: "Stream Using Cellular",
                  widget: SettingsToggleButton(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SettingsOption(
                  optionName: "Download Using Cellular",
                  widget: SettingsToggleButton(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Data Saver",
                          style: TextStyle(
                              color: Color(0xFFD1CFD5), fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Data Saver helps cut down your data usage by",
                          style: TextStyle(color: Color(0xFF727076)),
                        ),
                        Text(
                          "disabling autoplay videos when using cellular data.",
                          style: TextStyle(
                            color: Color(0xFF727076),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SettingsToggleButton(),
                    SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF201E24).withOpacity(0.9),
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                SettingsOption(
                  optionName: "Preferred Storage Location",
                  widget: GestureDetector(
                    onTap: () {
                      print("Preffered Storage Location button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SettingsOption(
                  optionName: "Privacy Settings",
                  widget: GestureDetector(
                    onTap: () {
                      print("Privacy Settings button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF201E24).withOpacity(0.9),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "Lock Screen Mode",
                  widget: GestureDetector(
                    onTap: () {
                      print("Lock Screen Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "Choose Default Audio Quality",
                  widget: GestureDetector(
                    onTap: () {
                      print("Audio Quality Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "Help",
                  widget: GestureDetector(
                    onTap: () {
                      print("Help Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "Clear Cache",
                  widget: GestureDetector(
                    onTap: () {
                      print("Clear Cache Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "Community Guidelines",
                  widget: GestureDetector(
                    onTap: () {
                      print("Guidelines Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SettingsOption(
                  optionName: "About",
                  widget: GestureDetector(
                    onTap: () {
                      print("About Button pressed");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF403D44),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: FlatButton(
              color: Color(0xFF201E24).withOpacity(0.9),
              onPressed: () {
                print("Log Out pressed");
              },
              child: Text("Log Out", style: TextStyle(
                color: Color(0xFFCFCAD1),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
