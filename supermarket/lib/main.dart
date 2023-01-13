// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileproject/screens/categries.dart';
import 'package:mobileproject/screens/contactus.dart';
import 'package:mobileproject/screens/dashboard.dart';
import 'package:mobileproject/screens/loading.dart';
import 'package:mobileproject/screens/login.dart';
import 'package:mobileproject/screens/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import './screens/account_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  final _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => LoginPage(), routes: [
      GoRoute(
        path: "DashBoard",
        builder: (context, state) => DashBoard(),
          // routes:[
          //   GoRoute(path: 'contact', builder:(context, state) => ContactUsPage(), ),
          // ]
          ),
      GoRoute(
        path: "Signup",
        builder: (context, state) => SignupPage(),
      ),
      // GoRoute(
      //   path: "Categories",
      //   builder: (context, state) => Category(),
      // ),
      GoRoute(
        path: "Contact",
        builder: (context, state) => ContactUsPage(),
      ),
            GoRoute(
        path: "account",
        builder: (context, state) => Account(),
      ),
      
    ]),
  ]);
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );   
    
  }
}
