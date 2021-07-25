import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headaddpage.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';
import 'package:tenders_managment_system/screens/users/home/user_home_page.dart';

class UsersAddPage extends StatelessWidget {
  const UsersAddPage({Key? key}) : super(key: key);
  static const String routeName = "/addusers";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeadPageAdd(textTitle: "Add Users"),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                    width: MediaQuery.of(context).size.width ,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Name"),
                        FieldText(textHint: "Name", iconField: Icons.person),
                        Text("Email"),
                        FieldText(
                            textHint: "Email",
                            iconField: Icons.alternate_email_outlined),
                        Text("Password"),
                        FieldText(
                            textHint: "Password", iconField: Icons.visibility),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            UiButton(
                              label: "Save",
                              buttonStyle: UiButtonStyle.Primary,
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, UsersHomePage.routeName);
                              },
                            ),
                            UiButton(
                              label: "Cancel",
                              buttonStyle: UiButtonStyle.Danger,
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, UsersHomePage.routeName);
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
