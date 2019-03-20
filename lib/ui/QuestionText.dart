import 'package:flutter/material.dart';


class QuestionText extends StatefulWidget {
  
  final String _question;

  QuestionText(this._question);

  
  @override
  _QuestionTextState createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(widget._question.toString()),
    );
  }
}