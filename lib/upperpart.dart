import 'package:flutter/material.dart';

class UpperBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30.0, bottom: 20.0),
          child: Text(
            "IMDb",
            style: TextStyle(
              color: Color(0xFFFC5B46A),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.80,
          padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 40.0),
          child: Text(
            "Top 250 Movies",
            style: TextStyle(
              fontSize: 70.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF11192F),
              letterSpacing: 0.8,
              height: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
