// ignore_for_file: unnecessary_this, use_key_in_widget_constructors
import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard( color: Colors.blue,        icon: Icons.border_clear,  text: 'General'),
            _SingleCard( color: Colors.purple,      icon: Icons.train_sharp,   text: 'Trasport'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard( color: Colors.pinkAccent,  icon: Icons.shopping_bag_outlined,  text: 'Shopping'),
            _SingleCard( color: Colors.orange  ,    icon: Icons.blinds_closed_outlined, text: 'Bills'),
          ]
        ),

        TableRow(
          children: [
            _SingleCard( color: Colors.green,        icon: Icons.movie_creation_outlined,  text: 'Movie'),
            _SingleCard( color: Colors.yellow,  icon: Icons.heart_broken_outlined,    text: 'Heart'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard( color: Colors.lightBlue,        icon: Icons.cloud,               text: 'Nube'),
            _SingleCard( color: Colors.deepPurple,  icon: Icons.food_bank_outlined,  text: 'Grocery'),
          ]
        ),
      ],
    );
  }
}
class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color    color;
  final String   text;

  const _SingleCard({
      required this.icon, 
      required this.color, 
      required this.text, 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color:const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  radius: 30,
                  child: Icon( this.icon, size: 35, color: Colors.white, ),
                ),
                const SizedBox( height: 10 ),
                Text( this.text, style: TextStyle( color: this.color, fontSize: 18 ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}