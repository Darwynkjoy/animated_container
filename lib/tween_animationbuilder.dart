import 'package:flutter/material.dart';

class TweenAnimationbuilderExample extends StatefulWidget{
  TweenAnimationbuilderExample({super.key});
  @override
  State<TweenAnimationbuilderExample> createState()=> _TweenAnimationbuilderExampleState();
}

class _TweenAnimationbuilderExampleState extends State<TweenAnimationbuilderExample>
with SingleTickerProviderStateMixin{
  bool _isLarge=false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Transition",style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: TweenAnimationBuilder(
      tween: Tween<double>(begin: 100,end: _isLarge ? 420 : 100),
      duration: Duration(seconds: 2),
      builder: (context,size,child){
        return Container(
          height: 900,
          width: size,
          child: child,
          color: Colors.blue,
        );
      },
      child: Center(
        child: Text("Animate",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _isLarge=!_isLarge;
            });
          },
          child: Icon(Icons.play_arrow_outlined),
          ),
    );
  }
}