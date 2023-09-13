// ignore_for_file: use_key_in_widget_constructors, unnecessary_this

import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          //imagen
          const Image(image: AssetImage('assets/landscape.jpg')),
          
          //titulo
          const Title(),


          //button section
          const BottonSection(),

          //descripcion 
          Container(
            margin: const  EdgeInsets.symmetric( horizontal: 26, vertical: 10 ),
            child: const Text('Consequat ut in veniam consequat dolore irure incididunt dolor do consectetur deserunt laboris fugiat. Consequat excepteur sint dolore mollit ex mollit incididunt ex. Velit fugiat officia laborum dolor. Velit nostrud duis consectetur non duis exercitation ullamco magna irure consectetur adipisicing deserunt. Minim incididunt tempor consectetur amet ullamco et fugiat culpa.')
          ),
        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold)),
            Text('Kandersteng, Switzerland', style: TextStyle(color: Colors.black45)),
          ],
          ),

          Expanded(child: Container()),

          Icon( Icons.star, color:  Colors.green[600]),
          const Text('41'),
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
    
          CustomBotton( icon: Icons.call_end_outlined, text: 'Call' ),
          CustomBotton( icon: Icons.near_me_outlined,  text: 'Route'),
          CustomBotton( icon: Icons.share_outlined,    text: 'Share')
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const CustomBotton({
    super.key, 
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue,   size: 25, ),
        Text( this.text, style: const TextStyle( color:  Colors.blue )),
      ],
    );
  }
}
