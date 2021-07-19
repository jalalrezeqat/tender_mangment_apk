import 'package:flutter/material.dart';

class HeadPageAdd extends StatelessWidget {
  String textTitle = "";
  TextStyle textTitleStyle = TextStyle(fontSize: 14, color: Colors.black ,fontWeight:FontWeight.bold);

  HeadPageAdd({required this.textTitle});

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(10,30,10, 40),
      width: MediaQuery.of(context).size.width,
      child: Row(

        children: [
          Text(
            textTitle,
            style: textTitleStyle,
          ),
        ],
      ),
    );
  }
}
