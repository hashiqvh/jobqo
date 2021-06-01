import 'package:flutter/material.dart';

class RowIconText extends StatelessWidget {
  const RowIconText({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 15,
        ),
        SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    );
  }
}
