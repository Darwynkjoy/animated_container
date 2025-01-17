import 'package:flutter/material.dart';

class Animatedpage extends StatefulWidget{
  @override
  State<Animatedpage> createState()=> _animatedpageState();
}
class _animatedpageState extends State<Animatedpage> {
  double _width=200;
  double _height=200;
  Color _color=Colors.white;

 void _animateContainer(){
  setState(() {
    _width = _width == 200 ? 410 : 200;
    _height = _height == 200 ? 410 : 200;
    _color = _color == Colors.white ? Colors.blue : Colors.white;
  });
 }


  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Animated Text",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          color: _color,
          curve: Curves.easeInExpo,
          duration: Duration(seconds: 1),
          child: GestureDetector(
            onTap: _animateContainer,
            child: FlutterLogo(size: 200,)
            ),
          ),
      ),
    );
  }
}