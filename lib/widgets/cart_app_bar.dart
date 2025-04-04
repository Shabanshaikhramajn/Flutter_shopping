import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

color:  Colors.white,
padding: EdgeInsets.all(25),
  child: Row(
    children: [
      InkWell(
        onTap: (){
            Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, size: 30,color: Color(0xFF4C53A5)),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text('Cart', style: TextStyle(fontSize: 24, color: Color(0xFF4C53A5), fontWeight: FontWeight.w700),),
      ),
      Spacer(),

      Icon(Icons.more_vert, size: 25, color: Color(0xFF4C53A5),)
    ],
  ),


    );
  }
}