
// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Screen1(),
          Screen2(),
        ],
      )
    );
  }
}

class Screen1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        //background 
        Background(),
        
        //main contecnt - column
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    const textStyle = TextStyle( fontSize: 55, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255) );

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 35 ),
          const Text('11°', style: textStyle),
          const Text('Miércoles',  style: textStyle),
          Expanded(child: Container()),
          const Icon( Icons.keyboard_arrow_down_outlined, size: 100, color: Colors.white ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 57, 184, 223),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image( image: AssetImage('assets/scroll-1.png') )
    );
  }
}

class Screen2 extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 57, 184, 223),
      child: Center(
        child: TextButton( 
          onPressed: () {},
          child:  const Padding(
            padding: EdgeInsets.symmetric( horizontal: 40),
            child:  Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30 )),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder(),
          )
        ),
      )
    );
   }
}