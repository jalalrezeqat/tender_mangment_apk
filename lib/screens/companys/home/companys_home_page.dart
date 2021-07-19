import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headpage.dart';
import 'package:tenders_managment_system/common/widgets/search.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/screens/companys/add/companys_add_page.dart';

class CompaniesHomePage extends StatelessWidget {
  const CompaniesHomePage({Key? key}) : super(key: key);
  static const String routeName = "/Company";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            HeadPage(
                textButton: "Add",
                onPressButton: () {
                  Navigator.pushNamed(context, CompaniesAddPage.routeName);
                },
                textTitle: "companies"),
            Search(onPressButton: () {}),
            Container(
             width: MediaQuery.of(context).size.width,
             margin: EdgeInsets.fromLTRB(10,40, 10,0),
              child: DataTable(columns: [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Email")),
                DataColumn(label: Text("Phone")),


              ], rows: [
                DataRow(cells: [
                  DataCell(Text("Name")),
                  DataCell(Text("Email")),
                  DataCell(Text("Phone")),
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
