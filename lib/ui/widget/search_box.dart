import 'package:flutter/material.dart';
import 'package:job_app/core/constants/constants.dart';

class SerachBox extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final IconData iconData;
  const SerachBox({
    Key key,
    @required this.text,
    @required this.controller,
    @required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // margin: EdgeInsets.only(top: 20),
      decoration: Constants.container,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: Icon(iconData),
          labelStyle: new TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class FormBox extends StatelessWidget {
  final TextEditingController controller;
  final int maxLines;
  final int minLines;

  const FormBox({
    Key key,
    @required this.controller,
    this.maxLines,
    this.minLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: TextInputType.multiline,
      controller: controller,
      decoration: InputDecoration(
        labelStyle: new TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
    );
  }
}
