import 'package:flutter/material.dart';
import 'package:job_finder/model/popular_jobs.dart';
import 'package:job_finder/screens/detail_job.dart';

import '../constants.dart';

class PopularJobsCard extends StatefulWidget {
  @override
  _PopularJobsCardState createState() => _PopularJobsCardState();
}

class _PopularJobsCardState extends State<PopularJobsCard> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: popularJobs.length,
          itemBuilder: (context, index) {
            PopularJobs jobs = popularJobs[index];
            return GestureDetector(
              child: Container(
                width: size.width * 0.6,
                margin: EdgeInsets.only(
                    right: 10.0, left: 5.0, bottom: 10.0, top: 10.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: _selectedIndex == index ? kDarkColor : Colors.white,
                  boxShadow: [kBoxShadow],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          jobs.jobName,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          jobs.salary,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.white,
                            border: Border.all(color: kDarkColor, width: 2),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text(jobs.jobType),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.017,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.06,
                          width: size.width * 0.12,
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Colors.white
                                : kDarkColor,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Image.asset(jobs.coLogo),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              jobs.coName,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('lorem Ipsum'),
                          ],
                        ),
                        Text(
                          jobs.daysLeft,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
            );
          }),
    );
  }
}
