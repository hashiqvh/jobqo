import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/ui/widget/search_box.dart';

class JobPostBox extends StatelessWidget {
  const JobPostBox({
    Key key,
    @required this.nameController,
    this.label,
    this.minLines,
    this.maxLines,
  }) : super(key: key);

  final TextEditingController nameController;

  final String label;
  final int minLines;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FormBox(
          controller: nameController,
          maxLines: maxLines,
          minLines: minLines,
        )
      ],
    );
  }
}
