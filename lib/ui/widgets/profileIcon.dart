import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.person_rounded,
          color: Colors.orange[900],
          size: 30.0,
        ),
      ),
    );
  }
}

class BackIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.arrow_back_outlined,
        color: Colors.white,
      ),
    );
  }
}
