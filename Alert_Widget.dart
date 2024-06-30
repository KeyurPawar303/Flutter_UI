import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertWidget'),),
      body: Center(
        child: ElevatedButton(child:
          const Text('Show Alert'),
          onPressed: (){_showDialog(context);},),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.red,
      title: Text('Data Transfer Error'),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("Yes! to Retry"),
            Text("No! cancel"),
          ],
        ),
      ),
      actions:[
       TextButton(onPressed: () {
       }, child: Text('Yes'), ),
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text('No'), ),
      ],
    );
  }
  );
}
