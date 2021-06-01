import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_app/core/constants/constants.dart';
import 'package:job_app/ui/screens/home.dart';
import 'package:job_app/ui/screens/saved_jobs.dart';
import 'package:job_app/ui/widget/bottom_bar.dart';

import 'job_post.dart';
import 'near_job.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

enum BottomIcons {
  Home,
  Nearst,
  Post,
  Search,
  Account,
}

class _MainPageState extends State<MainPage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home ? Home() : Container(),
          bottomIcons == BottomIcons.Nearst ? NearJob() : Container(),
          bottomIcons == BottomIcons.Post ? JobPost() : Container(),
          bottomIcons == BottomIcons.Search ? SavedJobs() : Container(),
          bottomIcons == BottomIcons.Account ? SavedJobs() : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              //   color: Colors.white,
              decoration: Constants.container1,
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.home,
                      text: "Home"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Nearst;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Nearst ? true : false,
                      icons: EvaIcons.pinOutline,
                      text: "Near Jobs"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Post;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Post ? true : false,
                      icons: EvaIcons.plusCircleOutline,
                      text: "Post Job"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Search;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Search ? true : false,
                      icons: EvaIcons.bookmarkOutline,
                      text: "Saved Jobs"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Account;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Account ? true : false,
                      icons: EvaIcons.person,
                      text: "Account"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
