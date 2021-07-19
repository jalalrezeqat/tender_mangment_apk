import 'package:tenders_managment_system/screens/catagories/add/catagories_add_page.dart';
import 'package:tenders_managment_system/screens/catagories/home/catagories_home_page.dart';
import 'package:tenders_managment_system/screens/companys/add/companys_add_page.dart';
import 'package:tenders_managment_system/screens/companys/home/companys_home_page.dart';
import 'package:tenders_managment_system/screens/home/home/home_home_page.dart';
import 'package:tenders_managment_system/screens/login/home/login_home_page.dart';
import 'package:tenders_managment_system/screens/products/add/products_add_page.dart';
import 'package:tenders_managment_system/screens/products/home/prodact_home_page.dart';
import 'package:tenders_managment_system/screens/users/add/users_add_page.dart';
import 'package:tenders_managment_system/screens/users/home/user_home_page.dart';

getRoutes(){
  return {
    CompaniesHomePage.routeName: (context) => CompaniesHomePage(),
    CompaniesAddPage.routeName: (context) => CompaniesAddPage(),
    ProductsHomePage.routeName: (context) => ProductsHomePage(),
    ProductsAddPage.routeName: (context) => ProductsAddPage(),
    CatagoriesHomePage.routeName: (context) => CatagoriesHomePage(),
    CatagoriesAddPage.routeName: (context) => CatagoriesAddPage(),
    LoginHomePage.routeName: (context) => LoginHomePage(),
    UsersHomePage.routeName: (context) => UsersHomePage(),
    UsersAddPage.routeName: (context) => UsersAddPage(),
    HomeHomePage.routeName: (context) => HomeHomePage(),
  };}