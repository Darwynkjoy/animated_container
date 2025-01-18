import 'package:flutter/material.dart';

class RotationAnimationDemo extends StatefulWidget{
  RotationAnimationDemo({super.key});
  @override
  State<RotationAnimationDemo> createState()=> _FadeTransitionDemoState();
}

class _FadeTransitionDemoState extends State<RotationAnimationDemo>
with SingleTickerProviderStateMixin{

  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 3),vsync: this)..repeat();
    _animation=Tween<double>(begin: 0,end: 2).animate(_controller!);
    _controller!.forward();
  }
  @override
  void dispose(){
    _controller!.dispose();
    super.dispose();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Transition"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation!,
          child: Container(
            height: 850,
            width: 405,
            color: Colors.blue,
            child: Center(child: Text("Align with the screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
          ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_controller!.isAnimating){
              _controller!.stop();
            }
            else{
              _controller!.repeat();
            }
          },
          child: Icon(Icons.play_arrow_outlined),
          ),
    );
  }
}