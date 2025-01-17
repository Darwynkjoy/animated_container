import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget{
  FadeTransitionDemo({super.key});
  @override
  State<FadeTransitionDemo> createState()=> _fadetransitionState();
}

class _fadetransitionState extends State<FadeTransitionDemo>
with SingleTickerProviderStateMixin{

  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 2),vsync: this);
    _animation=CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
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
        child: FadeTransition(
          opacity: _animation!,
          child: Container(
            height: 850,
            width: 405,
            color: Colors.blue,
            child: Center(child: Text("HELLO FLUTTER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
          ),
          ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_controller!.isCompleted){
              _controller!.reverse();
            }
            else{
              _controller!.forward();
            }
          },
          child: Icon(Icons.play_arrow_outlined),
          ),
    );
  }
}