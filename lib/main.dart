import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import 'app/routes/app_pages.dart'; // Impor AppPages

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(AuthController()); // Daftarkan AuthController
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KORA MENU',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME, // Set initial route
      getPages: AppPages.routes, // Gunakan rute yang sudah didefinisikan
    );
  }
}
