import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/controller/controller.dart';
import 'package:market/main%20screens/cart_screen.dart';
import 'package:market/main%20screens/home_screen.dart';
import 'package:market/main%20screens/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {


   return GetBuilder<NavBarController>(builder: (context){
     return Scaffold(
       body: IndexedStack(
       index: controller.tabIndex,
       children:const [
         HomeScreen(),
         CartScreen(),
         ProfileScreen(),
       ],
     ),

       bottomNavigationBar: Container(

         decoration: const BoxDecoration(
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(30),
             topLeft: Radius.circular(30),
           ),
         ),
         child: ClipRRect(
           borderRadius: const BorderRadius.only(
             topRight: Radius.circular(30),
             topLeft: Radius.circular(30),
           ),
           child: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             showUnselectedLabels: true,
             selectedItemColor: Colors.black,
             backgroundColor: Colors.white,
             unselectedItemColor: Colors.black38,

             items:  const [
               BottomNavigationBarItem(
                 label: "Home",
                 icon: Icon(Icons.home_rounded),
               ),
               BottomNavigationBarItem(
                 label: "My Cart",
                 icon: Icon(CupertinoIcons.cart),
               ),
               BottomNavigationBarItem(
                 label: "Profile",
                 icon: Icon(CupertinoIcons.profile_circled),
               )

             ],
             currentIndex: controller.tabIndex,
             onTap: controller.changeTabIndex,
           ),

         ),
       ),
     );
   }

   );
  }
}
