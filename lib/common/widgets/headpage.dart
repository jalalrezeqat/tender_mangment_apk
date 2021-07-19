import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';

class HeadPage extends StatelessWidget {
  String textButton = "";
  String textTitle = "";
  TextStyle textTitleStyle = TextStyle(fontSize: 14, color: Colors.black,fontWeight:FontWeight.bold);
  final VoidCallback onPressButton;

  HeadPage(
      {required this.textButton,
        required this.onPressButton,
        required this.textTitle});

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.fromLTRB(10,30,10, 40),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textTitle,
            style: textTitleStyle,
          ),
          UiButton(label: textButton,buttonStyle: UiButtonStyle.Primary,onPressed: onPressButton,)
        ],
      ),
    );
  }
}
