import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/common/widgets/ui_text_input.dart';
import 'package:tenders_managment_system/screens/home/home/home_home_page.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  static const String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Login",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Fieldetext(
                textHint: "Email", iconField: Icons.alternate_email_outlined),
            Fieldetext(textHint: "Password", iconField: Icons.visibility),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiButton(
                  label: "Login",
                  buttonStyle: UiButtonStyle.Burgundy,
                  onPressed: () {
                    Navigator.pushNamed(context, HomeHomePage.routeName);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
