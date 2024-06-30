import 'package:flutter/material.dart';

class SnakBarWidget extends StatelessWidget {
  const SnakBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('SnackBar'),),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
          final snakBar =  SnackBar(
            action: SnackBarAction(label: 'Undo', onPressed: (){},),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
             margin: EdgeInsets.symmetric(vertical: 30,horizontal: 100),
             //padding: const EdgeInsets.all(20),
               duration:const Duration(milliseconds: 3000),
               behavior: SnackBarBehavior.floating,
               content: const Text('Saved'));
            ScaffoldMessenger.of(context).showSnackBar(snakBar);
          },
            child:const Text('click to save'),),
        ),
      ),
    );
  }
}
