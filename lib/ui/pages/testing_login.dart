import 'package:cigi/services/services.dart';
import 'package:cigi/shared/shared.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                AuthService().signInWithGoogle();
              },
              child: Text('Signin')),
        ],
      ),
    );
  }
}
