import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget{
  @override
  State<ScaleTransitionDemo> createState()=> _ScaleTransitionDemoState();
}

class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 1),vsync: this);
    _animation=Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.forward();
  }
  
  @override
  void dispose(){
    _controller.dispose();
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
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            height: 850,
            width: 405,
            color: Colors.blue,
            child: Center(child: Text("Scale me",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
          ),
      ),
    );
}
}