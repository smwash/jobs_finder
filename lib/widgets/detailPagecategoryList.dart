import 'package:flutter/material.dart';

import '../constants.dart';

enum Category {
  description,
  company,
  reviews,
}

class DetailPageCcategoryList extends StatefulWidget {
  @override
  _DetailPageCcategoryListState createState() =>
      _DetailPageCcategoryListState();
}

class _DetailPageCcategoryListState extends State<DetailPageCcategoryList> {
  Category active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        children: [
          BuildContainer(
            text: 'Description',
            onPress: () {
              setState(() {
                active = Category.description;
              });
            },
            contColor:
                active == Category.description ? kDarkColor : Colors.white,
            textColor:
                active == Category.description ? Colors.white : kDarkColor,
          ),
          BuildContainer(
            text: 'Company',
            onPress: () {
              setState(() {
                active = Category.company;
              });
            },
            contColor: active == Category.company ? kDarkColor : Colors.white,
            textColor: active == Category.company ? Colors.white : kDarkColor,
          ),
          BuildContainer(
            text: 'Reviews',
            onPress: () {
              setState(() {
                active = Category.reviews;
              });
            },
            contColor: active == Category.reviews ? kDarkColor : Colors.white,
            textColor: active == Category.reviews ? Colors.white : kDarkColor,
          ),
        ],
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    this.text,
    this.onPress,
    this.contColor,
    this.textColor,
  });
  final String text;
  final Function onPress;
  final Color contColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: contColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [kBoxShadow],
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 1.1,
              color: textColor,
              fontWeight: FontWeight.w600),
        ),
      ),
      onTap: onPress,
    );
  }
}
