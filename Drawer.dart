import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:Container(
          color: Theme.of(context).primaryColor,
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      //color: Colors.redAccent,
                      child: const Row(children: [
                        CircleAvatar(
                          radius:40,
                          backgroundImage: NetworkImage("https://www.istockphoto.com/illustrations/profile-pictures"),
                        ),SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Keyur Pawar'),
                            Text('abc@gmail.com'),
                            //ListTile(title: Text('Akash'),
                           // subtitle: Text("akash@gmail.com"),)
                          ],
                        )
                      ],),
                    ),
                  ),
                   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(leading: Icon(Icons.folder),
                    title: Text('Folder'),),
                  ),
                  const ListTile(leading: Icon(Icons.notifications),
                    title: Text('Notify'),),
                 const  ListTile(leading: Icon(Icons.account_balance_wallet),
                    title: Text('Balance'),),
                  const ListTile(leading: Icon(Icons.alarm),
                    title: Text('Alarm'),),
                ],
              ),
        ),
      ),
      appBar: AppBar(title: const Text('Drawer Widget'),),
    );
  }
}
