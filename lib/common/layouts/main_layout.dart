
import 'package:flutter/material.dart';
import 'package:tenders_managment_system/common/widgets/menu.dart';
import 'package:tenders_managment_system/screens/home/home/home_home_page.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentIndex;
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
      bottomNavigationBar: BottomNavigationBar(items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
    BottomNavigationBarItem(icon: Icon(Icons.table_view),title: Text("")),
    BottomNavigationBarItem(icon: Icon(Icons.table_rows),title: Text("")),

    ],
    backgroundColor:Color(0xff4A1C35),
    fixedColor:Colors.white ,
    type: BottomNavigationBarType.fixed,
    onTap: (index){
    if (index==0){
    Navigator.pushNamed(context, HomeHomePage.routeName);
    }else if (index==1){

    }else if(index==2){
    Navigator.pushNamed(context, MainMenu.routeName);
    }
    },
    )
    );
  }
}
