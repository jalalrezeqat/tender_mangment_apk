import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headpage.dart';
import 'package:tenders_managment_system/common/widgets/search.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/screens/users/add/users_add_page.dart';

class UsersHomePage extends StatelessWidget {
  const UsersHomePage({Key? key}) : super(key: key);
  static const String routeName = "/user";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HeadPage(
              textButton: "Add",
              onPressButton: () {
                Navigator.pushNamed(context, UsersAddPage.routeName);
              },
              textTitle: "User Managment"),
          Search(onPressButton: () {}),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: DataTable(columns: [
              DataColumn(label: Text("UserName")),
              DataColumn(label: Text("Email")),
            ], rows: [
              DataRow(cells: [
                DataCell(Text("User1")),
                DataCell(Text("email@gmail.com")),
              ])
            ]),
          )
        ],
      ),
    );
  }
}
