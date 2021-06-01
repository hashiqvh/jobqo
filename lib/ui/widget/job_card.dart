import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_app/core/constants/constants.dart';
import 'package:job_app/ui/screens/home.dart';
import 'package:job_app/ui/screens/job_details.dart';
import 'package:job_app/ui/widget/row_icon_text.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JobDetails(),
            ));
      },
      child: Container(
        decoration: Constants.container2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Manger - Bussiness Development",
                style: Constants.title1bold,
              ),
              SizedBox(
                height: 10,
              ),
              RowIconText(
                icon: FontAwesomeIcons.moneyBillAlt,
                text: "London",
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowIconText(
                    icon: EvaIcons.pinOutline,
                    text: "London",
                  ),
                  Text(
                    "FullTime or PartTime",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowIconText(
                    icon: EvaIcons.cameraOutline,
                    text: "1 year",
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
