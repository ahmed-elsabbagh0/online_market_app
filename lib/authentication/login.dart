
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market/authentication/signup.dart';
import 'package:market/widgets/bottom_navigation_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {





  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                const SizedBox(height: 40,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail_rounded),
                    label: const Text("Email"),
                    fillColor: Colors.white,
                    prefixIconColor: Colors.teal,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password_rounded),
                    label: const Text("Password"),
                    fillColor: Colors.white,
                    prefixIconColor: Colors.teal,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10,),
                TextButton(
                  onPressed: (){},
                  child: const Text("Forgot Password?"),
                ),
                const SizedBox(height: 80,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: RawMaterialButton(
                    onPressed:() async{
                      try {
                        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                        );
                        Get.offAll(()=> const  BottomNavBar(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 700),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.rightSlide,
                            dialogType: DialogType.error,
                            title: "Error",
                            desc: "No user found for that email.",
                          ).show();
                        } else if (e.code == 'wrong-password') {
                          AwesomeDialog(
                            context: context,
                            animType: AnimType.rightSlide,
                            dialogType: DialogType.error,
                            title: "Error",
                            desc: "Wrong password provided for that user.",
                          ).show();
                        }
                      }

                    },
                    child: Text("Login",
                      style: GoogleFonts.jost(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                  ),
                ),
                const SizedBox(height: 10,),
                const Align(
                    alignment: Alignment.center,
                    child: Text("- OR -")),
                const SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: RawMaterialButton(
                    onPressed:(){
                      Get.offAll(()=> const SignUpScreen(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 700),
                      );
                    },
                    child: Text("Sign Up",
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
        ),
      ),
    );
  }
}
