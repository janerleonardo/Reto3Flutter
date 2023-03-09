import 'package:flutter/material.dart';
import 'design.dart';


class DesignList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.vertical,
        children: [
          Design("assets/img/simon.jpg", "Jan3r", "Expirince 1 year"),
          Design("assets/img/simon.jpg", "Jan3r", "Expirince 1 year"),
          Design("assets/img/simon.jpg", "Jan3r", "Expirince 1 year"),
          Design("assets/img/simon.jpg", "Jan3r", "Expirince 1 year"),
        ],
      ),
    );
  }

}