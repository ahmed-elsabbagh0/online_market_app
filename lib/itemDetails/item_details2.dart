import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class SecondItemDetails extends StatefulWidget {
  const SecondItemDetails({super.key});

  @override
  State<SecondItemDetails> createState() => _SecondItemDetailsState();
}

class _SecondItemDetailsState extends State<SecondItemDetails> {

  getToken()async{
    String? myToken = await FirebaseMessaging.instance.getToken();
    print("=========================================");
    print(myToken);
  }

  @override
  void initState() {
    getToken();
    super.initState();
  }

  TextEditingController counterTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height*0.4,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200),
                  bottomLeft: Radius.circular(200),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/banana.png",
                  ),
                  scale: 6,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const Icon(CupertinoIcons.heart, size: 30,),
                        const Spacer(flex: 1,),
                        Text("موز",
                          style: GoogleFonts.almarai(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("1",
                          style: GoogleFonts.jost(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Kg",
                          style: GoogleFonts.jost(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
                    child: NumberInputPrefabbed.roundedButtons(
                      numberFieldDecoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      decIcon: CupertinoIcons.minus,
                      decIconColor: Colors.white,
                      incIcon: CupertinoIcons.plus,
                      incIconColor: Colors.white,
                      controller: counterTextEditingController,
                      incDecBgColor: Colors.teal,
                      min: 1,
                      max: 9,
                      initialValue: 1,
                      buttonArrangement: ButtonArrangement.incRightDecLeft,
                    ),
                  ),
                  Text("Product details",
                    style: GoogleFonts.jost(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
                    style: GoogleFonts.jost(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Price",
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(flex: 1,),
                      Text(
                        "30 ",
                        style: GoogleFonts.almarai(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "EGP",
                        style: GoogleFonts.almarai(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: RawMaterialButton(
                      onPressed:() {

                      },
                      child: Text("Add to cart",
                        style: GoogleFonts.jost(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),


          ],
        )
    );
  }
}
