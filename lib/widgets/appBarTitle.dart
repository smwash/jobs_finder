import 'package:flutter/material.dart';
import 'package:job_finder/constants.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'JOB',
            style: TextStyle(
                fontSize: 20.0, color: kDarkColor, fontWeight: FontWeight.w800),
          ),
          TextSpan(
            text: '2',
            style: TextStyle(
                fontSize: 23.0,
                color: Colors.black,
                fontWeight: FontWeight.w800),
          ),
          TextSpan(
            text: '5',
            style: TextStyle(
                fontSize: 23.0, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '4',
            style: TextStyle(
                fontSize: 23.0,
                color: Colors.green,
                fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
