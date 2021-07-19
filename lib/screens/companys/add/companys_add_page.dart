import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headaddpage.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';
import 'package:tenders_managment_system/screens/companys/home/companys_home_page.dart';

class CompaniesAddPage extends StatelessWidget {
  const CompaniesAddPage({Key? key}) : super(key: key);
  static const String routeName = "/addcompany";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeadPageAdd(textTitle: "Add Companies"),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Name"),
                      Fieldetext(textHint: "Name", iconField: Icons.title),
                      Text("Email"),
                      Fieldetext(
                          textHint: "Email",
                          iconField: Icons.alternate_email_outlined),
                      Text("Phone"),
                      Fieldetext(textHint: "Phone", iconField: Icons.phone),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UiButton(
                            label: "Save",
                            buttonStyle: UiButtonStyle.Primary,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, CompaniesHomePage.routeName);
                            },
                          ),
                          UiButton(
                            label: "Cancel",
                            buttonStyle: UiButtonStyle.Danger,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, CompaniesHomePage.routeName);
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
    );
  }
}
