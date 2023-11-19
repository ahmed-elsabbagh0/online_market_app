import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/main%20screens/home_screen.dart';


class DisplayThird extends StatelessWidget {
  const DisplayThird({super.key});

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
                      backgroundColor: Colors.blueGrey,
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.blueGrey,
                    ),
                  ),
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.delivery_dining_rounded, size: 90,color: Colors.white,),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70,),
            Text("تسليم سريع للمنزل",
              style: GoogleFonts.almarai(
                fontSize: 30,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30,),
            Text("جميع العناصر لها نضارة حقيقية و هي مخصصة لاحتياجاتك",
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
                        Colors.blueGrey,
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                  ),
                  onPressed: (){
                    Get.to(()=> const HomeScreen(),
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
