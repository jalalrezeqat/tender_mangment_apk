import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headaddpage.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';

class EditProductsAddPage extends StatelessWidget {
  const EditProductsAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeadPageAdd(textTitle: "Edit Products"),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(60, 60, 0, 0),
                  width: MediaQuery.of(context).size.width / 8,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Name"),
                      FieldText(textHint: "Name", iconField: Icons.title),
                      Text("Note"),
                      FieldText(textHint: "Note", iconField: Icons.note),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UiButton(
                            label: "Save",
                            buttonStyle: UiButtonStyle.Primary,
                            onPressed: () {},
                          ),
                          UiButton(
                            label: "Cancel",
                            buttonStyle: UiButtonStyle.Danger,
                            onPressed: (){},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
