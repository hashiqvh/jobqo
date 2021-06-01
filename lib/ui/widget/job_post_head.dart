import 'package:flutter/material.dart';

class JobPostHead extends StatelessWidget {
  final Color color1;
  final Color color2;
  const JobPostHead({
    Key key,
    this.color1,
    this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(5),
            ),
            height: 5,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 5,
          child: Container(
            decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.circular(5),
            ),
            height: 5,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
