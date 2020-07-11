import 'package:flutter/material.dart';
import 'package:job_finder/constants.dart';
import 'package:job_finder/widgets/appBarTitle.dart';
import 'package:job_finder/widgets/detailPagecategoryList.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: size.height * 0.4,
            title: AppBarTitle(),
            backgroundColor: kBGColor,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              color: kDarkColor,
              iconSize: 27.0,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/Businessman Climbing Up For Successful Goal.jfif',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'Senior UX Designer',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 23.0,
                    letterSpacing: 1.1),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  Text(
                    '\$40 - 90k/year',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Full Time',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: ListTile(
                leading: Container(
                  height: size.height * 0.06,
                  width: size.width * 0.12,
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: kDarkColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Image.asset('images/googlePlus.png'),
                ),
                title: Text(
                  'Safaricom',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text('WestLands'),
                trailing: Text(
                  '10 Days left',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: DetailPageCcategoryList(),
          ),
          SliverToBoxAdapter(
            child: DetailqualificationContainer(
              text: 'Qualification',
            ),
          ),
          SliverToBoxAdapter(
            child: DetailqualificationContainer(
              text: 'Job Description',
            ),
          ),
          SliverToBoxAdapter(
            child: DetailqualificationContainer(
              text: 'Job Reviews',
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.095,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.white,
                boxShadow: [kBoxShadow],
              ),
              child: Icon(
                Icons.bookmark,
                color: kDarkColor,
                size: 28.0,
              ),
            ),
            SizedBox(width: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
              decoration: BoxDecoration(
                color: kDarkColor,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Text(
                'Apply Now',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.1,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailqualificationContainer extends StatelessWidget {
  DetailqualificationContainer({
    this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [kBoxShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.1),
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '.',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 10.0),
              Flexible(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore veniam, quis nostrud ',
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '.',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 10.0),
              Flexible(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore veniam,  ',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
