import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading ?  : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bu Content"),
            SizedBox(height: 20),
            CupertinoButton(
              color: Colors.yellow,
              onPressed: () {},
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
