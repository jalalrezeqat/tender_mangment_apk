import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/screens/catagories/home/catagories_home_page.dart';
import 'package:tenders_managment_system/screens/companys/home/companys_home_page.dart';
import 'package:tenders_managment_system/screens/home/home/home_home_page.dart';
import 'package:tenders_managment_system/screens/login/home/login_home_page.dart';
import 'package:tenders_managment_system/screens/products/home/prodact_home_page.dart';
import 'package:tenders_managment_system/screens/users/home/user_home_page.dart';

class TextButtonMenu extends StatelessWidget {
  String textButton = "";
  final VoidCallback onPressButton;

  TextButtonMenu({required this.textButton, required this.onPressButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.white),
      onPressed: onPressButton,
      child: Text(textButton),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);
  static const String routeName = "/menu";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        padding: EdgeInsets.all(40),
        color: Color(0xff4A1C35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButtonMenu(
                textButton: "Home",
                onPressButton: () {
                  Navigator.pushNamed(context, HomeHomePage.routeName);
                }),
            TextButtonMenu(textButton: "Tender", onPressButton: () {}),
            TextButtonMenu(
                textButton: "Company",
                onPressButton: () {
                  Navigator.pushNamed(context, CompaniesHomePage.routeName);
                }),
            TextButtonMenu(
                textButton: "Products",
                onPressButton: () {
                  Navigator.pushNamed(context, ProductsHomePage.routeName);
                }),
            TextButtonMenu(
                textButton: "Categories",
                onPressButton: () {
                  Navigator.pushNamed(context, CatagoriesHomePage.routeName);
                }),
            TextButtonMenu(
                textButton: "Users",
                onPressButton: () {
                  Navigator.pushNamed(context, UsersHomePage.routeName);
                }),
            TextButtonMenu(
                textButton: "Logout",
                onPressButton: () {
                  Navigator.pushNamed(context, LoginHomePage.routeName);
                }),
          ],
        ),
      ),
    ));
  }
}
