import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/main%20screens/fruit_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FirstScreen> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize:const Size(double.infinity, 60),
          child: SafeArea(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "التصنيفــــــات",
                style:
                GoogleFonts.almarai(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black45

                ),

              ),
            ),
          ),
      ),


      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 ,),
          child: CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                       Get.to(()=> const FruitScreen(),
                        transition: Transition.downToUp,
                         duration: const Duration(milliseconds: 1000)
                       );
                      },
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
                    ElevatedButton(
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
                    ElevatedButton(
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
                    ElevatedButton(
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
                    ElevatedButton(
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
                    ElevatedButton(
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
                    ElevatedButton(
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
                    ElevatedButton(
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



                  ],
                ),
              ),
            ],
          )
        ),
      ),




    );
  }
}

