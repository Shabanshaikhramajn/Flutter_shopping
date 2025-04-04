import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/bottom_navigation_bar_custom.dart';
import 'package:shopping/widgets/bottomnavigationbar_products.dart';
import 'package:shopping/widgets/item_page_app_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemPageAppBar(),
          Image(
            image: AssetImage(
              'assets/1.png',
            ),
            width: 40,
            height: 300,
          ),
          Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Product Title',
                            style: TextStyle(fontSize: 35),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'lorem ipsum  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Color : ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Size :',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 23,),
                       
                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    spreadRadius: 0.7,
                                    blurRadius: 10)
                              ]),
                          child: Center(
                              child: Text(
                            'S',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )),
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    spreadRadius: 0.7,
                                    blurRadius: 10)
                              ]),
                          child: Center(
                              child: Text(
                            'M',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )),
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    spreadRadius: 0.7,
                                    blurRadius: 10)
                              ]),
                          child: Center(
                              child: Text(
                            'L',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )),
                        ),

                        Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.only(right: 15),
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    spreadRadius: 0.7,
                                    blurRadius: 10)
                              ]),
                          child: Center(
                              child: Text(
                            'XL',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          )),
                        ),

                       
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
