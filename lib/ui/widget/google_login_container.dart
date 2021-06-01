import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/core/constants/constants.dart';

class GoogleLoginContainer extends StatelessWidget {
  const GoogleLoginContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Constants.containergoogle,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/google128.png",
              height: 25,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Google Login",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
