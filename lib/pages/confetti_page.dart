import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfettiPage extends StatefulWidget {
  const ConfettiPage({super.key});

  @override
  State<ConfettiPage> createState() => _ConfettiPageState();
}

class _ConfettiPageState extends State<ConfettiPage> {
  final controller = ConfettiController(
    duration: Duration(seconds: 30),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Center(
            child: CupertinoButton(
              onPressed: () {
                controller.stop(clearAllParticles: true);
                controller.play();
              },
              child: Text("Play Confetti"),
            ),
          ),
          ConfettiWidget(
            confettiController: controller,
            numberOfParticles: 1000,
          ),
        ],
      ),
    );
  }
}
