import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/ui/screens/job_post_page_2.dart';
import 'package:job_app/ui/widget/containor_text.dart';
import 'package:job_app/ui/widget/job_post_box.dart';
import 'package:job_app/ui/widget/job_post_head.dart';
import 'package:job_app/ui/widget/search_box.dart';

class JobPost extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JobPostHead(
                  color1: Colors.indigo[700],
                  color2: Colors.indigo[700].withOpacity(0.5),
                ),
                JobPostBox(
                  nameController: nameController,
                  label: "Job title",
                ),
                JobPostBox(
                  nameController: companyNameController,
                  label: "Company name",
                ),
                JobPostBox(
                  nameController: salaryController,
                  label: "Salary",
                ),
                JobPostBox(
                  nameController: locationController,
                  label: "Loction",
                ),
                JobPostBox(
                  nameController: descriptionController,
                  label: "Description",
                  minLines: 5,
                  maxLines: null,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JobPostPage2(),
                    ),
                  ),
                  child: ContainorText(
                    color: Colors.indigo[700],
                    text: "Next",
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
