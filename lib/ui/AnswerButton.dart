import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer,this._onTap);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
      onTap: this._onTap,
       child: Container(
          color: _answer == true ? Colors.greenAccent : Colors.redAccent,
          child: Center(
            child: Text(
              _answer == true ? "True" : "False",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontStyle: FontStyle.italic,
              ),
              ),
          ),
        ),
      ),
    );
  }
}

