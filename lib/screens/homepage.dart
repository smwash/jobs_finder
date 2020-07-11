import 'package:flutter/material.dart';
import 'package:job_finder/constants.dart';
import 'package:job_finder/model/popular_jobs.dart';
import 'package:job_finder/widgets/appBarTitle.dart';
import 'package:job_finder/widgets/popularjobs_container.dart';
import 'package:job_finder/widgets/recentjobstile.dart';

import 'form_sheet.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CircleAvatar(
              backgroundColor: kBlueColor.withOpacity(0.8),
              child: Text(
                'PK',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning Paul',
                    style: TextStyle(fontSize: 18.0, color: Colors.black87),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Find A Job That \nSuits You',
                    style: TextStyle(
                        fontSize: 30.0,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.0),
                      boxShadow: [],
                    ),
                    child: TextField(
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Search For a Job')),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: kDarkColor,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.filter_list,
                        size: 27,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => FormSheet(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Jobs',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        color: kBlueColor),
                  ),
                ],
              ),
            ),
            PopularJobsCard(),
            SizedBox(
              height: size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Jobs',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
                  ),
                  Text(
                    'Show All',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        color: kBlueColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            RecentJobsTile(),
          ],
        ),
      ),
    );
  }
}
