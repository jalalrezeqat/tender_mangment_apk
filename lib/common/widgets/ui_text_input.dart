import 'package:flutter/material.dart';

class Fieldetext extends StatefulWidget {
  String textHint = "";
  IconData iconField;

  Fieldetext({
    required this.textHint,
    required this.iconField,

  });

  @override
  _FieldetextState createState() => _FieldetextState();
}

class _FieldetextState extends State<Fieldetext> {

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