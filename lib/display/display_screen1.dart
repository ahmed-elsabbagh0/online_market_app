import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/display/display_screen2.dart';

class DisplayFirst extends StatelessWidget {
  const DisplayFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.2,
                      child: CircleAvatar(
                        radius: 130,
                        backgroundColor: Colors.redAccent,
                      ),
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundColor: Colors.redAccent,
                      ),
                    ),
                    CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.shopping_cart_outlined, size: 80,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70,),
              Text("البحث بالقرب منك",
              style: GoogleFonts.almarai(
                fontSize: 30,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 30,),
              Text("ابحث عن المتاجر المفضلة التي تريدها بموقعك أو حيك",
              style: GoogleFonts.almarai(
                fontSize: 20,
              ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 50,),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.redAccent,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    )
                  ),
                    onPressed: (){
                    Get.to(()=> const DisplaySecond(),
                      transition: Transition.rightToLeft,
                      duration: const Duration(milliseconds: 800),
                    );
                    },
                    child: const Icon(Icons.arrow_forward_rounded)
                ),
              ),
            ],
          ),
        ),
    );
  }
}
