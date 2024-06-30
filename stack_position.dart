import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Stack and Position'),),
      body:Stack(
        children: [
          Positioned(child: Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration:const  BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/travel.jpg'),  
                fit: BoxFit.cover
              ),
            ),
          )),
          Positioned(
              top: 20,
              left: 50,
              child: Container(width: 200,height: 200,color: Colors.red,))
        ],
      )
      /*Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              child: Container(width: 400, height: 400,color: Colors.green,),),
            Positioned(
              top: 20,
              child: Container(width: 200,height: 200,color: Colors.yellow,),),
            Positioned(
              left: 20,
              child: Container(width: 100,height: 100,color: Colors.red,),)
          ],
        ),
      ),*/

    );
  }
}
