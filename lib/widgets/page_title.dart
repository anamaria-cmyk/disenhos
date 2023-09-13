// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric( horizontal:  25 ) ,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify trasnsaction', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white )),
            SizedBox( height: 10 ),
            Text('Classify this trasnsaction into a particular category',  style: TextStyle( fontSize: 16,  color: Colors.white )),
          ],
        ),
      ),
    );
  }
}