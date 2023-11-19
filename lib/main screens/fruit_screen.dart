import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/itemDetails/item_details.dart';
import 'package:market/itemDetails/item_details2.dart';
import 'package:market/itemDetails/item_details3.dart';

class FruitScreen extends StatelessWidget {
  const FruitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "الفواكه",
              style: GoogleFonts.almarai(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black45,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
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
                    labelStyle: TextStyle(color: Colors.black38),
                    iconColor: Colors.black38,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
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
                    onPressed: () {},
                    child: const Icon(Icons.settings)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(30),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/apple.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "تفاح",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 80,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "40 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.8, 0.95),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            CupertinoIcons.cart_badge_plus,
                            size: 25,
                          ),
                          onPressed: () {
                            Get.to(
                              () => const ItemDetails(),
                              transition: Transition.cupertinoDialog,
                              duration: const Duration(seconds: 2),
                            );
                          },
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/banana.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "موز",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 80,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "30 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.8, 0.95),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            CupertinoIcons.cart_badge_plus,
                            size: 22,
                          ),
                          onPressed: () {
                            Get.to(
                              () => const SecondItemDetails(),
                              transition: Transition.cupertinoDialog,
                              duration: const Duration(seconds: 2),
                            );
                          },
                        ),
                      ),
                    ),
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/karaz.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "كرز",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "120 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                     Align(
                      alignment: const Alignment(-0.8, 0.95),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.cart_badge_plus,
                          size: 22,),
                          onPressed: (){
                            Get.to(()=> const ThirdItemDetails(),
                              transition: Transition.cupertinoDialog,
                              duration: const Duration(seconds: 2),
                            );
                          },
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/kewee.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "كيوي",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "70 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/lemon.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "ليمون",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "15 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/mango.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "مانجو",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "100 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/orange.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "برتقال",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "40 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/roman.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "رمان",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "80 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(CupertinoIcons.heart)),
                              const Spacer(
                                flex: 1,
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Colors.green,
                                ),
                                child: Text(
                                  "فاكهة",
                                  style: GoogleFonts.almarai(
                                    color: Colors.white,
                                    fontSize: 15,
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
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black12,
                                  ],
                                  begin: Alignment.bottomRight,
                                  tileMode: TileMode.decal),
                            ),
                            child: const Image(
                                image: AssetImage(
                              "assets/images/straberry.png",
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Text(
                                      "فراولة",
                                      style: GoogleFonts.almarai(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
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
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "1 ",
                                        style: GoogleFonts.almarai(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kg",
                                        style: GoogleFonts.almarai(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 20,),
                                      Text(
                                        "50 ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      Text(
                                        "EGP ",
                                        style: GoogleFonts.almarai(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),
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
                        radius: 20,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 22,
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
    );
  }
}
