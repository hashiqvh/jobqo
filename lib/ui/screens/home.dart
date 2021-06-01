import 'dart:math' as math;

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/job_card.dart';
import '../widget/search_box.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  final TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Transform.rotate(
          angle: math.pi / 2,
          child: Icon(
            EvaIcons.barChartOutline,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(EvaIcons.bellOutline),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find your",
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  )),
              Text(
                "perfect job",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SerachBox(
                  text: "Search by postings",
                  controller: controller,
                  iconData: EvaIcons.search),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular job",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                      )),
                  Text(
                    "See more",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlue),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              JobCard(),
              SizedBox(
                height: 5,
              ),
              JobCard(),
              SizedBox(
                height: 5,
              ),
              JobCard(),
            ],
          ),
        ),
      ),
    );
  }
}
