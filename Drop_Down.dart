import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String SelectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropDown Menu'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                isExpanded: true,
                value: SelectedValue,
                icon: Icon(Icons.arrow_drop_down_circle),
                onChanged: (String? newvalue ){
                  setState(() {
                    SelectedValue = newvalue!;
                  });
                },
                items: <String>[
                  'Orange',
                  'Apple',
                  'Watermelon',
                  'Cherry'
                ].map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(value: value,child: Text(value));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
