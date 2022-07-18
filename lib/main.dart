// import 'dart:html';

import 'package:cigi/services/services.dart';
import 'package:cigi/ui/pages/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: ((context) => AuthService()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AuthService().handleAuthState(),
        ),
      );
}
