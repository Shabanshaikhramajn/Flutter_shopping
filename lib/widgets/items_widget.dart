

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(

childAspectRatio: 0.7,
crossAxisCount: 2,
physics: NeverScrollableScrollPhysics(),
shrinkWrap: true,

children: [
  for(int  i =1 ; i<8; i++)
  Flexible(

    child: InkWell(
      onTap: (){

              Navigator.pushNamed(context, 'itemPage');
      },
      child: Container(
        padding: EdgeInsets.only(left: 15,right: 15,top: 10),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
      
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal: 9,vertical: 3),
      
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF4C53A5),
                  ),
      
                  child: Text('-50%', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                ),
      
                Icon(Icons.favorite_border, color: Colors.redAccent,)
              ],
            ),
      
            Container(
                  color: Colors.transparent,
      
                child: Image(image: AssetImage('assets/$i.png', ),
                  height: 150,
                  width: 100,
                )
      
            ),
             Align(
                alignment: Alignment.topLeft,
              child: Text('Product Title', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),)),
            
                 Align(
                alignment: Alignment.topLeft,
              child: Text('Write description of product', style: TextStyle(fontSize: 13 ),)),
      
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$50', style: TextStyle(fontSize: 10),),
      
                  Icon(Icons.shopping_cart_checkout_rounded)
                ],
              )
            
      
          ],
        ),
      ),
    ),
  )
],


    );
  }
}

// shopping cart icons