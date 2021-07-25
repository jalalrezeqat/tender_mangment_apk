import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';

class Search extends StatelessWidget {
  final VoidCallback onPressButton;

  Search({required this.onPressButton});

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Container(
      width: device.size.width,
      margin: EdgeInsets.fromLTRB(10, 60, 10, 60),
      child: Row(
        children: [
          Container(
            width: device.size.width * 0.7,
            height: device.size.height * 0.04,
            margin: EdgeInsets.fromLTRB(0, 0, 27, 0),
            child: FieldText(textHint: "Search", iconField: Icons.search),
          ),

        ],
      ),
    );
  }
}
