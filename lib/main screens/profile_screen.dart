import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/authentication/login.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.15,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: CupertinoColors.activeGreen,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height*0.12,
                          width: MediaQuery.of(context).size.width*0.75,

                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white30,
                        radius: 70,
                        child: CircleAvatar(
                          radius: 65,
                          child: Icon(CupertinoIcons.profile_circled,
                          size: 120,),
                        ),
                        ),
                      Text("علاء اسماعيل",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text("alaaesmail@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 30,),

              SizedBox(
                height: 320,
                child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  scrollDirection: Axis.vertical,

                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                          color: Colors.red,
                          size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("عني",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bookmark_border,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("طلباتي",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card_rounded,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("مدفوعاتي",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.heart_fill,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("المفضل لدي",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.arrow_2_circlepath,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("المعاملات",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.percent_rounded,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("رمز ترويجي",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.location_solid,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("عنواني",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.bell_fill,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("تنبيه",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      height: 100,
                      width: 100,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.settings,
                            color: Colors.red,
                            size: 30,

                          ),

                          SizedBox(height: 15,),
                          Text("اعدادات",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),


                      ]

                ),
              ),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                  ),
                                  ),
                              ),
                              padding: MaterialStatePropertyAll(EdgeInsets.zero),
                              backgroundColor: MaterialStatePropertyAll(Colors.white38),
                              elevation: MaterialStatePropertyAll(0),
                            ),
                              onPressed:(){} ,
                              child: const Icon(Icons.support_agent_rounded,
                              size: 50,)
                          ),
                          const SizedBox(height: 10,),
                          const Text("مركز الدعم",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                  ),
                                  ),
                              ),
                              padding: MaterialStatePropertyAll(EdgeInsets.zero),
                              backgroundColor: MaterialStatePropertyAll(Colors.white38),
                              elevation: MaterialStatePropertyAll(0),
                            ),
                              onPressed:() async {
                                await FirebaseAuth.instance.signOut();
                                Get.offAll(()=> const LoginScreen(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700),
                                );

                              } ,
                              child: const Icon(Icons.exit_to_app,
                              size: 50,)
                          ),
                          const SizedBox(height: 10,),
                          const Text("خروج",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
