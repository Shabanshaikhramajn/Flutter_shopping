

import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
     
      height: 130,
      width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                
              ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text('Total ',style: TextStyle(fontSize: 23, color: Colors.white, 
                          ), ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Text('\$250', style: TextStyle(fontSize: 23, color: Colors.white),),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 30,),

                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width *.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)

                      ),
                      child: Align(
                          alignment: Alignment.center,
                        child: Text('Check Out', style: TextStyle(fontSize: 22, color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),)),
                    )

                  ],
                ),
    );
  }
}