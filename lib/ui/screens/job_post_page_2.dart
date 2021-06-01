import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/core/constants/constants.dart';
import 'package:job_app/ui/widget/containor_text.dart';
import 'package:job_app/ui/widget/job_post_head.dart';

class JobPostPage2 extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Post Job",
          style: GoogleFonts.montserrat(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            JobPostHead(
              color1: Colors.indigo[700],
              color2: Colors.indigo[700],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: Constants.container2,
                    child: IconButton(
                      onPressed: () async {
                        PickedFile _file = await _picker.getImage(
                          source: ImageSource.gallery,
                        );
                      },
                      icon: Icon(
                        FontAwesomeIcons.images,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ContainorText(
              color: Colors.indigo[700],
              text: "Finish",
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
