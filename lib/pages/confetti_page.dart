import 'dart:math';

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
  Alignment align = Alignment.center;
  double blast = pi * 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: align,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CupertinoButton(
                      onPressed: () {
                        blast = pi * 1.25;
                        align = Alignment.topLeft;
                        setState(() {});
                        controller.stop(clearAllParticles: true);
                        controller.play();
                      },
                      child: Text("Top Left"),
                    ),
                  ),
                  Expanded(
                    child: CupertinoButton(
                      onPressed: () {
                        blast = pi * 1.5;
                        align = Alignment.topCenter;
                        setState(() {});
                        controller.stop(clearAllParticles: true);
                        controller.play();
                      },
                      child: Text("Top Center"),
                    ),
                  ),
                  Expanded(
                    child: CupertinoButton(
                      onPressed: () {},
                      child: Text("Top Right"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
          ConfettiWidget(
            confettiController: controller,
            blastDirection: blast,
            numberOfParticles: 1000,
            gravity: 0.1,
            colors: [
              Colors.green,
              Colors.black,
              Colors.yellow,
            ],
          ),
        ],
      ),
    );
  }
}
