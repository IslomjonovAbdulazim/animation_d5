import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
      body: Stack(
        children: [
          SizedBox(
            height: 200,
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
