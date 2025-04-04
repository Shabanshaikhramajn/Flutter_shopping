

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/categorieswidget.dart';
import 'package:shopping/widgets/home_app_bar.dart';
import 'package:shopping/widgets/items_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 1500,

            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),

                    height: 50,
                    width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),


                    child: Row(
                      children: [
                              Container(
                                height: 50,
                                width: 270,
                                child: TextFormField(
decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Search here...'
                        
                        
                          ),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.camera_alt,
                                size: 28,
                                color: Color(0xFF4C53A5),
                         
                              )

  ],
                    ),
 ),
                SizedBox(height: 20,),
              Container(
                color: Colors.transparent,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric( horizontal: 15, vertical: 0),
                child: Text('Categories', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),),
              ),
              SizedBox(height: 0,),

              Categorieswidget(),
              SizedBox(height: 20,),
// Items1
                  Container(
                    color: Colors.transparent,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
                    child: Text('Best Selling' , style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF4C53A5)),),
                  ),


                  ItemsWidget( ),

             
             
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index){if(index ==2){

          Navigator.pushNamed(context, 'cartPage' );

        }

        },
        height: 50,
        color: Color(0xFF4C53A5),
        backgroundColor: Colors.transparent,
        items: 
          [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
              Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
         
          ]
      
    ),

    );
  }
}