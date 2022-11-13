import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
// Import the generated file
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
