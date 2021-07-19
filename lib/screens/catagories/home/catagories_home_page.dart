import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headpage.dart';
import 'package:tenders_managment_system/common/widgets/search.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/screens/catagories/add/catagories_add_page.dart';

class CatagoriesHomePage extends StatelessWidget {
  const CatagoriesHomePage({Key? key}) : super(key: key);
  static const String routeName = "/catagoies";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HeadPage(
              textButton: "Add",
              onPressButton: () {
                Navigator.pushNamed(context, CatagoriesAddPage.routeName);
              },
              textTitle: "Catagories"),
          Search(onPressButton: () {}),
          Container(
            width: MediaQuery.of(context).size.width ,
            margin: EdgeInsets.fromLTRB(10,40, 10,0),
            child: DataTable(columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Note")),

            ], rows: [
              DataRow(cells: [
                DataCell(Text("Categories")),
                DataCell(Text("Note")),
              ])
            ]),
          )
        ],
      ),
    );
  }
}
