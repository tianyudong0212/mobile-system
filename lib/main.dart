import 'package:fer_app/pages/xd_history.dart';
import 'package:fer_app/pages/xd_home.dart';
import 'package:fer_app/pages/xd_reset.dart';
import 'package:fer_app/pages/xd_user.dart';
import 'package:flutter/material.dart';

import 'pages/xd_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const XDHome(title: 'home'),
        '/login': (context) => const XDLogin(title: 'login'),
        '/user': (context) => const XDUser(title: 'user'),
        '/reset': ((context) => const XDReset(title: 'reset password')),
        '/history': (context) => const XDHistory(title: 'history'),
      },
    );
  }
}
