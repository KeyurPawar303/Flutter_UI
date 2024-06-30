import 'package:flutter/material.dart';

class DismissbleWidget extends StatefulWidget {
  const DismissbleWidget({super.key});

  @override
  State<DismissbleWidget> createState() => _DismissbleWidgetState();
}

class _DismissbleWidgetState extends State<DismissbleWidget> {
  List<String> fruits = ['Orange', 'Lemon', 'StrawBerry', 'Apple'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dismissible'),
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      fruits[index],
                    )));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      fruits[index],
                    )));
                  }
                },
                key: Key(fruit),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                )
            );
          },
        )
    );
  }
}
