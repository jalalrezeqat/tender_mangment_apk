import 'package:flutter/material.dart';

class UiButton extends StatelessWidget {
  final String label;
  final UiButtonStyle buttonStyle;
  final VoidCallback?  onPressed;
  const UiButton({Key? key,required this.label, this.buttonStyle=UiButtonStyle.Primary,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,

      child: ElevatedButton(
        style:  ElevatedButton.styleFrom(
            primary: this.buttonStyle==UiButtonStyle.Primary?Color(0xff19C955):this.buttonStyle==UiButtonStyle.Danger?Colors.red:this.buttonStyle==UiButtonStyle.Burgundy?Color(0xff4A1C35):Color(0xff4A1C35),
            onPrimary: Colors.white,
            textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold),
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13)))
        ),
          child:Text(this.label) ,
          onPressed: this.onPressed
      ),
    );
  }
}

enum UiButtonStyle{
  Primary,
  Danger,
  Burgundy
}