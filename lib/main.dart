// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poject_final/view/auth/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*better in navigation than the navigator, better than navigating using 6 lines,
    you can just add Get.to(page_name()); , so we separate bussiness logic (Backend) 
    form the view as we are using (MVVM) Arch.
    */
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
