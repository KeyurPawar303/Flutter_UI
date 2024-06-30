import 'package:flutter/material.dart';
import 'package:ui/Alert_Widget.dart';
import 'package:ui/Bottom_sheet.dart';
import 'package:ui/Dissimisble.dart';
import 'package:ui/Images_widget.dart';


class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selectedindex =0;
  //List<Widget> widgets = [
  //  Text('Home'),
  //  Text('Search'),
  //  Text('Add'),
  //  Text(('Share'))
  //];
  PageController pageController = PageController();
  void onTapped(int index){
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Bottom Navigation"),),
      body: PageView(

          controller:pageController,
          children:const  [
        AlertWidget(),
        BottomSheetWidget(),
        DismissbleWidget(),
        ImageWidget(),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.share),label: 'Share'),
      ],
      currentIndex: selectedindex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
