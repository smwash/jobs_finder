import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class FormSheet extends StatefulWidget {
  @override
  _FormSheetState createState() => _FormSheetState();
}

class _FormSheetState extends State<FormSheet> {
  DateTime _time;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [kBoxShadow],
        ),
        child: Form(
          child: ListView(
            children: [
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: kDarkColor,
                  child: Icon(Icons.close, color: Colors.white, size: 40.0),
                ),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                decoration:
                    kTextFieldDecoration.copyWith(labelText: 'Job Name'),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                decoration:
                    kTextFieldDecoration.copyWith(labelText: 'Job Salary'),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: kDarkColor, width: 2),
                      ),
                      child: Text(
                        _time == null ? 'Select Date' : 'Change Date',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2018),
                        lastDate: DateTime.now(),
                      ).then((datePicked) {
                        if (datePicked == null) {
                          return;
                        }
                        setState(() {
                          _time = datePicked;
                        });
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: kDarkColor, width: 2),
                ),
                child: Text(
                  //DateFormat('dd').format(_time),
                  //DateFormat.yMMMMd('en_US').format(_time),
                  _time.toString(),
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
