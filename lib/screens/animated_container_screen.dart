import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.deepPurple;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _canviarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(250).toDouble() + 50;
      _height = random.nextInt(250).toDouble() + 50;
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'canviar',
            onPressed: _canviarForma,
            child: const Icon(Icons.play_circle_outline_rounded),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'tornar',
            onPressed: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}