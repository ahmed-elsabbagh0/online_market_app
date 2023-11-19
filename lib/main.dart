import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:market/firebase_options.dart';
import 'package:market/routes/routes.dart';
import 'package:market/services/notification_service.dart';
import 'package:market/splash_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationServices.initializeNotification();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return GetMaterialApp(
      initialRoute: AppPage.getbottom_navigation_bar(),
      getPages: AppPage.routes,
      debugShowCheckedModeBanner: false,
      title: 'Market App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF0EAD6),
      ),
      home: const MySplashScreen(),
    );
  }
}