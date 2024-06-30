

import 'package:flutter/material.dart';

class Container_Size extends StatelessWidget {
  const Container_Size({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Container and Sized"),),

      body:Column(
    children: [
    Spacer(), // This will push the container to the bottom
    SizedBox(
    height: screenHeight * 0.5, // Set height to half of the screen height
    child: Container(height:screenHeight * 0.5,width: screenWidth * 1,
        padding:const EdgeInsets.all(10),
        decoration:const BoxDecoration(
          color: Colors.blue,
          //borderRadius: BorderRadius.circular(10),
            borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomLeft:Radius.circular(10)),
          boxShadow: [
            BoxShadow(blurRadius: 10,color: Colors.grey)
          ]
        ),
        child://const Center(child:Text("Clickme", style:TextStyle(fontSize: 15),)),))
              Container(
                //margin: EdgeInsets.all(10),
                color: Colors.red,
              )
    ))]));
  }
}
