// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileproject/categries.dart';
import 'package:mobileproject/dashboard.dart';
import 'package:mobileproject/loading.dart';
import 'package:mobileproject/login.dart';
import 'package:mobileproject/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Pref.init();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  final _router = GoRouter(routes: [
    GoRoute(path: "/", builder: (context, state) => LoginPage(), routes: [
      GoRoute(
        path: "login",
        builder: (context, state) => const DashBoard(),
      ),
      GoRoute(
        path: "Signup",
        builder: (context, state) => SignupPage(),
      ),
      GoRoute(
        path: "Categories",
        builder: (context, state) => Category(),
      ),
    ]),
  ]);
  MyApp({super.key});

  // This widget is the root of your application
  bool dark = true;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}