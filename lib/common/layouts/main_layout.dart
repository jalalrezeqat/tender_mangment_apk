
import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/widgets/menu.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff4A1C35),),
      drawer: Drawer(child: MainMenu(),),
      body:
      Row(
        children: [
          //content
          Container(
            width: MediaQuery.of(context).size.width,
            child: this.child,
          )

        ],
      )
      ,
    );
  }
}
