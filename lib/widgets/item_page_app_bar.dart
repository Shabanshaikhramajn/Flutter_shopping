import 'package:flutter/material.dart';

class ItemPageAppBar extends StatelessWidget {
  const ItemPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

color:  Colors.white,
padding: EdgeInsets.all(25),
  child: Container(
    margin: EdgeInsets.all(0),
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
          child: Text('Products', style: TextStyle(fontSize: 24, color: Color(0xFF4C53A5), fontWeight: FontWeight.w700),),
        ),
        Spacer(),
    
        Icon(Icons.favorite, size: 29, color: Colors.redAccent, ),
      ],
    ),
  ),


    );;
  }
}