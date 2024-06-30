import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(

      appBar: AppBar(title: const Text("Rows And Cols")),
      body: Container(
        height:screenHeight,
        width: screenWidth,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(height: 60,
            width: 60,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow:const [
                BoxShadow(blurRadius: 10,color: Colors.black,spreadRadius: 4,
                offset: Offset(0, 8),//gives shadow to bottom part
                )
              ]
            ),
          ),
          Container(height: 60, width: 60, color: Colors.deepPurple,),
          Container(height: 60, width: 60, color: Colors.red,),
          Container(height: 60, width: 60, color: Colors.purpleAccent,),
          Container(height: 60, width: 60, color: Colors.amber,),
        ],)
        /*Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          Container(height: 60, width: 60, color: Colors.blue,),
          Container(height: 60, width: 60, color: Colors.deepPurple,),
          Container(height: 60, width: 60, color: Colors.red,),
          Container(height: 60, width: 60, color: Colors.purpleAccent,),
          Container(height: 60, width: 60, color: Colors.amber,),
        ],),*/
      ),
    );
  }
}
