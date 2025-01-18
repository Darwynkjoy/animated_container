import 'package:animated_container/animated_container.dart';
import 'package:animated_container/fade_transition.dart';
import 'package:animated_container/rotation_animation.dart';
import 'package:animated_container/scale_transition.dart';
import 'package:animated_container/slide_transition.dart';
import 'package:animated_container/tween_animationbuilder.dart';
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,
      home: TweenAnimationbuilderExample(),
    );
  }
}