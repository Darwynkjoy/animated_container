import 'package:flutter/material.dart';

class Animatedpage extends StatefulWidget{
  @override
  State<Animatedpage> createState()=> _animatedpageState();
}
class _animatedpageState extends State<Animatedpage> {
  double _width=200;
  double _height=200;
  Color _color=Colors.blue;

 void _animationContainer(){
  setState(() {
    _width = _width == 200 ? 300 : 200;
    _height = _height == 200 ? 300 : 200;
    _color = _color == Colors.blue ? Colors.red : Colors.blue;
  });
 }


  Widget build(BuildContext context){
    return Scaffold(
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
          duration: Duration(seconds: 2),
          child: GestureDetector(
            onTap: () => _animationContainer,
            child: FlutterLogo(size: 75,)
            ),
          ),
      ),
    );
  }
}