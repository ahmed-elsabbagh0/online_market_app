import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/display/display_screen3.dart';

class DisplaySecond extends StatelessWidget {
  const DisplaySecond({super.key});

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
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.local_offer_outlined, size: 90,color: Colors.white,),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70,),
            Text("عروض طازجة و جودة",
              style: GoogleFonts.almarai(
                fontSize: 30,
                color: Colors.green,
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
                        Colors.green,
                      ),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                  ),
                  onPressed: (){
                    Get.to(()=> const DisplayThird(),
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
