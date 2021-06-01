import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/core/constants/constants.dart';

class JobDetails extends StatelessWidget {
  @override
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
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                "https://support.apple.com/content/dam/edam/applecare/images/en_US/repair/applecare-products_2x.png",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Manager",
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(EvaIcons.pinOutline),
                Text("UK",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: Constants.container2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("UK",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: Constants.container2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("UK",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
            Text(
                "Knowledge of FLUTTER is must\nProven working experience in Android app development\nExperience with Android SDK, Android Bundle\nExperience working with remote data via REST API and JSON\nExperience with third-party libraries and APIs ( Google API, Maps, Firebase, etc )\nSound Technical Expertise in Core Java - Android, XML, JSON, SOAP & Android Native\nExperience with Android SDK & Android Tools framework")
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 50,
          decoration: Constants.container3,
          child: Center(
              child: Text("Apply for a Job",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))),
        ),
      ),
    );
  }
}
