import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("عربة التسوق",
                    style: GoogleFonts.almarai(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.bag,
                    size: MediaQuery.of(context).size.height*0.2,
                      color: Colors.red,

                    ),
                    const SizedBox(height: 40,),
                    Text("عربة التسوق فارغة!",
                    style: GoogleFonts.almarai(
                      fontSize: 30,
                    ),
                    ),
                    const SizedBox(height: 15,),
                    Text("اجعل سلتك سعيدة و أضف منتجات",
                    style: GoogleFonts.almarai(
                      fontSize: 15,
                    ),
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
