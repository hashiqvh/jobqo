import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/ui/screens/auth/login.dart';

import '../../widget/containor_text.dart';
import '../../widget/google_login_container.dart';
import '../../widget/job_post_box.dart';

class Signup extends StatelessWidget {
  @override
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up",
                style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                )),
            Text(
              "Jobqo",
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            JobPostBox(
              nameController: emailController,
              label: "Email",
            ),
            JobPostBox(
              nameController: passwordController,
              label: "Password",
            ),
            SizedBox(
              height: 50,
            ),
            ContainorText(
              color: Colors.indigo[800],
              text: "Login",
            ),
            SizedBox(
              height: 20,
            ),
            GoogleLoginContainer(),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "if you have an accound ",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        )),
                    TextSpan(
                      text: 'Login',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
