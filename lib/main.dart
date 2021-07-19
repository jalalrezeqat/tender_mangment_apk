import 'package:flutter/material.dart';
import 'package:tenders_managment_system/screens/login/home/login_home_page.dart';
import 'common/widgets/routs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tender',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginHomePage.routeName,
      routes: getRoutes(),
    );
  }
}
