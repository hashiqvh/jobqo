import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/ui/widget/job_card.dart';
import 'package:job_app/ui/widget/search_box.dart';

class NearJob extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                  text: "Search by Location",
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
