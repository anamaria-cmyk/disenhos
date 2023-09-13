// ignore_for_file: use_key_in_widget_constructors
import 'package:disenhos/widgets/background.dart';
import 'package:disenhos/widgets/card_table.dart';
import 'package:disenhos/widgets/custom_botton_navigator.dart';
import 'package:disenhos/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),
          //home body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
     );
   }
}
class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          //titulos
          PageTitle(),

          //card table
          CardTable(),
        ],
      ),
    );
  }
}