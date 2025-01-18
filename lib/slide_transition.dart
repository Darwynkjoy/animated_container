import 'package:flutter/material.dart';

class SlideTransitionDemo extends StatefulWidget{
  @override
  State<SlideTransitionDemo> createState()=> _SlideTransitionDemoState();
}

class _SlideTransitionDemoState extends State<SlideTransitionDemo>
with SingleTickerProviderStateMixin{

  AnimationController? _controller;
  Animation<Offset>? _animation;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 2),vsync: this);
    _animation=Tween<Offset>(
      begin: Offset(4.6, 6.6),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller!, curve: Curves.easeIn));
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
        title: Text("Slide Transition"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SlideTransition(
          position: _animation!,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("Sliding",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
          ),
      ),
    );
}
}