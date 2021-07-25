import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldText extends StatefulWidget {
  String textHint = "";
  IconData iconField;

  FieldText({
    required this.textHint,
    required this.iconField,

  });

  @override
  _FieldTextState createState() => _FieldTextState();
}

class _FieldTextState extends State<FieldText> {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(

        decoration: InputDecoration(
          hintText: widget.textHint,
          hintStyle: TextStyle(color: Colors.black38,fontSize: 14),
          suffixIcon: Icon(
            widget.iconField,
            color: Color(0xff4A1C35),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff4A1C35),
              style: BorderStyle.solid,
              width: 0.8,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff4A1C35),
              style: BorderStyle.solid,
              width: 0.8,
            ),
          ),
        ),

      ),
    );
  }
}

