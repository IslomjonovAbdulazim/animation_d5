import 'package:animation_d5/pages/confetti_page.dart';
import 'package:animation_d5/pages/loading_page.dart';
import 'package:animation_d5/pages/progress_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {
                  Get.to(ConfettiPage());
                },
                child: Text("Confetti Page"),
              ),
              Divider(),
              CupertinoButton(
                onPressed: () {
                  Get.to(LoadingPage());
                },
                child: Text("Loading Page"),
              ),
              Divider(),
              CupertinoButton(
                onPressed: () {
                  Get.to(ProgressPage());
                },
                child: Text("Progress Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
