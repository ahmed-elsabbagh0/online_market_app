import 'package:get/get.dart';
import 'package:market/main%20screens/cart_screen.dart';
import 'package:market/main%20screens/home_screen.dart';
import 'package:market/main%20screens/profile_screen.dart';
import 'package:market/widgets/bottom_navigation_bar.dart';

class AppPage{
  static List<GetPage> routes = [
    GetPage(name: bottom_navigation_bar, page:() => const BottomNavBar()),
    GetPage(name: home_screen, page: () => const HomeScreen()),
    GetPage(name: cart_screen, page: () => const CartScreen()),
    GetPage(name: profile_screen, page: () =>  const ProfileScreen()),

  ];


  static getbottom_navigation_bar() => bottom_navigation_bar;
  static gethome_screen() => home_screen;
  static getcart_screen() => cart_screen;
  static getprofile_screen() => profile_screen;


  static String bottom_navigation_bar ='/';
  static String home_screen ='/home';
  static String cart_screen ='/first';
  static String profile_screen ='/profile';
}