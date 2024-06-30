import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade50,
            title: const Text('Whatsapp'),
          bottom: const TabBar(
              indicatorColor: Colors.blue,
              //isScrollable: true,
              tabs: [
            Tab(icon: Icon(Icons.chat), text: 'Chat',),
            Tab(icon: Icon(Icons.update_outlined), text: 'Update',),
            Tab(icon: Icon(Icons.people), text: 'Communities',),
            Tab(icon: Icon(Icons.call), text: 'Call',),
          ]),),
          body: TabBarView(children: [
            Container(child:const Center(child: Text('No Contacts Added',style: TextStyle(fontSize: 20),),),),
            Container(child:const Center(child: Text('No Contacts Added',style: TextStyle(fontSize: 20),),),),
            Container(child:const Center(child: Text('Currently not in any community',style: TextStyle(fontSize: 20),),),),
            Container(child:const Center(child: Text('Recent calls',style: TextStyle(fontSize: 20),),),),
          ]),
        ));
  }
}
