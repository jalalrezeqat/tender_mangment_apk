import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headaddpage.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';
import 'package:tenders_managment_system/screens/products/home/prodact_home_page.dart';

class ProductsAddPage extends StatelessWidget {
  const ProductsAddPage({Key? key}) : super(key: key);
  static const String routeName = "/addprodact";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeadPageAdd(textTitle: "Add Products"),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    width: MediaQuery.of(context).size.width ,
                    height: MediaQuery.of(context).size.height / 3,
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
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, ProductsHomePage.routeName);
                              },
                            ),
                            UiButton(
                              label: "Cancel",
                              buttonStyle: UiButtonStyle.Danger,
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, ProductsHomePage.routeName);
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
