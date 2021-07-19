import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/layouts/main_layout.dart';
import 'package:tenders_managment_system/common/widgets/headpage.dart';
import 'package:tenders_managment_system/common/widgets/search.dart';
import 'package:tenders_managment_system/common/widgets/ui_button.dart';
import 'package:tenders_managment_system/screens/products/add/products_add_page.dart';

class ProductsHomePage extends StatelessWidget {
  const ProductsHomePage({Key? key}) : super(key: key);
  static const String routeName = "/product";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HeadPage(
              textButton: "Add",
              onPressButton: () {
                Navigator.pushNamed(context, ProductsAddPage.routeName);
              },
              textTitle: "Products"),
          Search(onPressButton: () {}),
          Container(
            width: MediaQuery.of(context).size.width ,
            margin: EdgeInsets.fromLTRB(10,40, 10,0),
            child: DataTable(columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Notes")),
            ], rows: [
              DataRow(cells: [
                DataCell(Text("Products")),
                DataCell(Text("Notes")),
              ])
            ]),
          )
        ],
      ),
    );
  }
}
