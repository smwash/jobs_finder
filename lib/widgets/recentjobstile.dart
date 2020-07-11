import 'package:flutter/material.dart';
import 'package:job_finder/constants.dart';
import 'package:job_finder/model/recent_jobs.dart';
import 'package:job_finder/screens/detail_job.dart';

class RecentJobsTile extends StatefulWidget {
  @override
  _RecentJobsTileState createState() => _RecentJobsTileState();
}

class _RecentJobsTileState extends State<RecentJobsTile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: GestureDetector(
        child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: recentJobs.length,
            itemBuilder: (context, index) {
              RecentJobs jobs = recentJobs[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: [kBoxShadow],
                ),
                child: ListTile(
                  leading: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.12,
                    padding: EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      color: kDarkColor,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Image.asset(jobs.coLogo),
                  ),
                  title: Text(
                    jobs.jobName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: kDarkColor,
                      fontSize: 16.0,
                    ),
                  ),
                  subtitle: Text('${jobs.coName} - ${jobs.jobType}'),
                  trailing: Text(jobs.daysLeft),
                ),
              );
            }),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
      ),
    );
  }
}
