import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(color: Color(0xFF707EA8)),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF707EA8),
          ),
          contentPadding: EdgeInsets.only(left: 25.0),
          fillColor: Colors.transparent.withOpacity(0.2),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
