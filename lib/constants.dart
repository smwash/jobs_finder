import 'package:flutter/material.dart';

const kDarkColor = Color(0xff131313);
const kBGColor = Color(0xfff6f6f6);
const kBlueColor = Color(0xff5944be);

const kBoxShadow = BoxShadow(
  color: Colors.black12,
  offset: Offset(0, 10),
  blurRadius: 10.0,
);

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  // hintStyle: TextStyle(color: Colors.black45),
  contentPadding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kDarkColor, width: 1.0),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kDarkColor, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
