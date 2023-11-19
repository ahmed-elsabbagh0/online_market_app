import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/main%20screens/first_screen.dart';
import 'package:market/main%20screens/profile_screen.dart';




final List<String> imgList =[
  'assets/images/chicken.png',
  'assets/images/coffee.jpg',
  'assets/images/frozen.jpg',
  'assets/images/fruit.jpg',
  'assets/images/herb.jpg',
  'assets/images/paper.jfif',
  'assets/images/tamr.jpg',
  'assets/images/vegetable.jpg',
];




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,left: 20,right: 20,top: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 4,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "علاء اسماعيل", style: GoogleFonts.almarai(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        ),
                       Row(
                         children: [
                           Text(
                             "الرياض - خي الصحافة", style: GoogleFonts.almarai(
                             fontWeight: FontWeight.normal,
                             fontSize: 15,
                           ),
                           ),
                           const SizedBox(width: 5,),
                           const Icon(CupertinoIcons.location_solid, color: Colors.red, size: 15,)
                         ],
                       ),
                      ],
                    ),
                    const SizedBox(width: 10,),
                     CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.teal,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                          icon: const Icon(CupertinoIcons.profile_circled, size: 50),
                        onPressed: () {
                           Get.to(()=> const ProfileScreen(),
                             transition: Transition.rightToLeft,
                             duration: const Duration(milliseconds: 800),
                           );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )
                    ),
                    child: TextFormField(
                      cursorColor: Colors.black38,
                      showCursor: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.black,
                        label: Text("البحث عن المنتجات"),
                        prefixIcon: Icon(CupertinoIcons.search),
                        prefixIconColor: Colors.black38,
                        suffixIcon: Icon(CupertinoIcons.xmark_circle_fill),
                        suffixIconColor: Colors.black38,
                        labelStyle: TextStyle(
                          color: Colors.black38
                        ),
                        iconColor: Colors.black38,

                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.redAccent,
                          ),
                        ),
                        onPressed:()
                        {

                        },
                        child: const Icon(Icons.settings)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    SizedBox(
                      child: ElevatedButton(
                        style:  const ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                            Colors.transparent,
                        ),
                        elevation: MaterialStatePropertyAll(0),
                          foregroundColor: MaterialStatePropertyAll(Colors.black38)
                        ),
                     onPressed: (){},
                    child: const Row(
                      children: [
                        Text("مشاهدة الكل"),
                        Icon(CupertinoIcons.forward, size: 17,),
                      ],
                    ),
                ),
                      ),
                    const Spacer(flex: 1,),
                    const Text("الأكثر مبيعاَ",
                    style: TextStyle(
                      color: Colors.black38,
                    ),
                    ),
                    const SizedBox(width: 5,),
                    const Text("القيمة الأفضل",
                    style:TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              CarouselSlider(
                items: imgList.map((item) => Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        child: Image.asset(item,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width*0.8,
                        ),
                      ),
                  ),
                ),
                ).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 3,
                ),
              ),
              const SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(
                      child: ElevatedButton(
                        style:  const ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                          Colors.transparent,
                        ),
                            elevation: MaterialStatePropertyAll(0),
                            foregroundColor: MaterialStatePropertyAll(Colors.black38)
                        ),
                        onPressed: (){
                          Get.to(()=> const FirstScreen(),
                              transition: Transition.downToUp,
                            duration: const Duration(milliseconds: 800),
                          );

                        },
                        child: const Row(
                          children: [
                            Text("مشاهدة الكل"),
                            Icon(CupertinoIcons.forward, size: 17,),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 1,),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text("التصنيفات",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                 padding: const EdgeInsets.all(10),
                 children: [
                   SizedBox(
                     width:100,
                     child: ElevatedButton(

                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(

                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("الفواكه",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/fruit.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.redAccent,
                                     child: Icon(
                                       Icons.fastfood_rounded,
                                     ),

                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(
                     width: 100,
                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("الخضروات",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/vegetable.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.green,
                                     child: Icon(Icons.fastfood_rounded),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(
                     width: 100,

                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("البهارات",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/herb.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.red,
                                     child: Icon(Icons.fastfood_rounded),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(
                     width:100,

                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("البن",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/coffee.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.brown,
                                     child: Icon(Icons.fastfood_rounded),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(
                     width: 100,

                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("المجمدات",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/frozen.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.grey,
                                     child: Icon(Icons.fastfood_rounded, color: Colors.white,),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(

                     width:100,
                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("الدواجن",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/chicken.png",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.yellow,
                                     child: Icon(Icons.fastfood_rounded,color: Colors.grey,),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(

                     width:100,
                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("الورقيات",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/paper.jfif",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.lightGreen,
                                     child: Icon(
                                       Icons.fastfood_rounded,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(width: 10,),
                   SizedBox(

                     width:100,
                     child: ElevatedButton(
                       onPressed: (){},
                       style: const ButtonStyle(
                         backgroundColor: MaterialStatePropertyAll(
                           Colors.transparent,
                         ),
                         elevation: MaterialStatePropertyAll(0),
                         padding: MaterialStatePropertyAll(
                             EdgeInsets.zero
                         ),
                       ),
                       child: Stack(
                         children: [
                           Container(
                             decoration: const BoxDecoration(
                               borderRadius:  BorderRadius.all(Radius.circular(10)),
                               color: Colors.white,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   offset: Offset.zero,
                                   blurRadius:5,
                                 )
                               ],
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                   width: double.infinity,
                                   height: 100,
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: Text("التمور",
                                         style: GoogleFonts.almarai(
                                           fontSize: 18,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black54,
                                         ),
                                       ),
                                     ),
                                   ),
                                 ),

                                 const Flexible(
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.all(Radius.circular(10)),
                                     child: Image(
                                       image: AssetImage(
                                         "assets/images/tamr.jpg",
                                       ),
                                       fit: BoxFit.cover,
                                       height: 80,
                                       width: double.infinity,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Column(
                             children: [
                               SizedBox(height: 50,),
                               Align(
                                 alignment: Alignment.center,
                                 child: CircleAvatar(
                                   radius: 39,
                                   backgroundColor: Colors.white,
                                   child: CircleAvatar(
                                     radius: 35,
                                     backgroundColor: Colors.brown,
                                     child: Icon(
                                       Icons.fastfood_rounded,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ),

                 ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                 children: [
                   SizedBox(
                     child: ElevatedButton(
                       style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(
                        Colors.transparent,
                       ),
                           padding: MaterialStatePropertyAll(
                             EdgeInsets.zero,
                           ),
                           elevation: MaterialStatePropertyAll(0),
                           foregroundColor: MaterialStatePropertyAll(Colors.black38)
                       ),
                       onPressed: (){},
                       child: const Row(
                         children: [
                           Text("مشاهدة الكل"),
                           Icon(CupertinoIcons.forward, size: 17,),
                         ],
                       ),
                     ),
                   ),
                   const Spacer(flex: 1,),
                   const Text("تسوق حسب العروضَ",
                     style:TextStyle(
                       color: Colors.black87,
                       fontWeight: FontWeight.bold,
                       fontSize: 18,
                     ),
                   ),

                 ],
             ),
              ),
              SizedBox(
            height:MediaQuery.of(context).size.width*0.6,
            width:MediaQuery.of(context).size.width*0.8,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3),


            children: [
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.red,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "50%",
              style: GoogleFonts.almarai(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.green,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "40%",
                style: GoogleFonts.almarai(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blueGrey,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "30%",
                style: GoogleFonts.almarai(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.purple,
            ),
            child:  Align(
              alignment: Alignment.center,
              child: Text(
                "اختيارات الشهر",
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                softWrap: true,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "اقل\nسعر",
                softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.teal,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "اشتـــــــــــري 1\nو احصل على 1",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.almarai(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text("مجانا",
                style: GoogleFonts.almarai(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                    bottom: 10,
                  ),
                  child: Text("طازج و سريع",
                    style:GoogleFonts.almarai(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ) ,
                  ),
                ),
              ),
              SizedBox(
                height: 420,
                child: GridView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(20),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    mainAxisExtent: 200,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                    style: GoogleFonts.almarai(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                    begin: Alignment.bottomRight,
                                    tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/apple.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("تفاح",
                                        style:GoogleFonts.almarai(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                      style: GoogleFonts.almarai(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("40 EGP",
                                    style: GoogleFonts.almarai(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                            , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/banana.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("موز",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("30 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/karaz.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("كرز",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("120 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/kewee.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("كيوي",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("70 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/lemon.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("ليمون",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("15 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/mango.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("مانجو",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("100 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/orange.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("برتقال",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("40 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/roman.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("رمان",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("80 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                  },
                                      icon: const Icon(CupertinoIcons.heart)

                                  ),

                                  const Spacer(flex: 1,),
                                  Container(
                                    height: 15,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20), topLeft: Radius.circular(20),
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Text("فاكهة",
                                      style: GoogleFonts.almarai(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                width: double.infinity,
                                height: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient:LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Colors.black12,
                                      ],
                                      begin: Alignment.bottomRight,
                                      tileMode: TileMode.decal
                                  ),
                                ),
                                child: const Image(
                                    image:AssetImage("assets/images/straberry.png",)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Container(
                                        height:15,
                                        width:60,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                        child: Text("فراولة",
                                          style:GoogleFonts.almarai(
                                            fontSize: 10,
                                            color: Colors.white,
                                          ) ,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text("1 Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Colors.black12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text("40 EGP",
                                      style: GoogleFonts.almarai(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.8, 0.95),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(
                              CupertinoIcons.cart_badge_plus
                              , size: 15,
                            ),

                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}





