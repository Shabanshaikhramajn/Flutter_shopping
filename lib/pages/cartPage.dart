

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/item_page.dart';
import 'package:shopping/widgets/bottom_navigation_bar_custom.dart';
import 'package:shopping/widgets/cart_app_bar.dart';


class Cartpage extends StatelessWidget {
  
  const Cartpage({super.key});

  final bool selectedValue = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: ListView(
        children: [
          CartAppBar(),
        
        Container(
          height: 1500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          child:  
          Column(
            children: [
            for(int i =1; i<4; i++)
          
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 120,
                    decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(value: 1, groupValue:selectedValue , activeColor: Color(0xFF4C53A5), onChanged: (value) { 
                  }, ),
                  
                                Image(image: AssetImage('assets/$i.png'), width: 80,),
                                 
                                 
                                  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 5 , bottom: 15),
                      child: Text('Product Title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900 , color: Color(0xFF4C53A5)),),
                    ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('\$55', style: TextStyle(), ),
                            )
                  ],
                                  ),
                                
                                  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Icon(Icons.delete ,size: 25, color: Colors.redAccent,),
                        ),
                          SizedBox(
                            height: 30,
                          ),
                        Row(
                          children: [
                              Container(
                                margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      boxShadow: [ BoxShadow(
                                        color: Colors.grey.withOpacity(.4),
                                        spreadRadius: 0.7,
                                        blurRadius: 10
                                      )]
                                    ),
                  
                                    child: Icon(CupertinoIcons.add, size: 25,),
                        ),
                  
                        Text('1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300
                        ),),
                  
                        Container(
                           margin: EdgeInsets.only(left: 15),
                          
                          padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      boxShadow: [ BoxShadow(
                                        color: Colors.grey.withOpacity(.4),
                                        spreadRadius: 0.7,
                                        blurRadius: 10
                                      )]
                                    ),
                  
                                    child: Icon(CupertinoIcons.minus, size: 25,),
                        )
                  
                          ],
                        )
                  
                      
                  
                      ],
                    )
                                  
                              ,
                  
                      ],
                    ),
                  
                                  
                    
                  ),
          
                SizedBox(height: 10,),
                  Row(
                    children: [
                            
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color(0xFF4C53A5),
                                  borderRadius: BorderRadius.circular( 20
                                  )
                                ),
                              
                              child: Icon(CupertinoIcons.add, color: Colors.white, size: 20,)),
                              
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Add Coupon Code ' , style: TextStyle(fontSize: 16, color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),),
            )
                    ],
                  )
          
          ,
            ],
          ),
        
        )



        ],
      ),
     bottomNavigationBar: BottomNavigationBarCustom(),

    );
  }
}