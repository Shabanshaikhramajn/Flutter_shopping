import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  const Categorieswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(

        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
          for(int i = 1; i<8; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 22, ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset('assets/$i.png', width: 40, height: 40,),
                  Text('Sandal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color(0xFF4C53A5)),)
                ],
              ),
            )],
        ),




    );
  }
}