import 'package:flutter/material.dart';

class  ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange','Banana', 'Mango','strawberry'];
  Map fruit_person = {
    'fruits': ['orange','Banana', 'Mango','strawberry'],
    'name' : ['Akshit', 'Mahesh','Keyur','aditya']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView", style: TextStyle(fontSize: 10), ),
      backgroundColor: Colors.red,),
      body:
        GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
        itemCount: fruits.length,
          itemBuilder: (context,index){
          return Card(
            child: Center(
                child: Text(fruits[index]),
            ),
          );
          },
        )
      /*GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        childAspectRatio: 3 / 2,
      ),
        children:const [
          Card(
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Hello'),
            ),
          ),
        ],
      ),*/
      /*ListView.builder(
        itemCount: fruits.length,
       itemBuilder: (context,index){
         return Container(

         child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                onTap: (){
                  print(fruit_person['fruits'][index]);
                },
                title: Text(fruit_person['fruits'][index]),
                subtitle: Text(fruit_person['name'][index]),
              ),
            ),
          );
        },
        //children:const[
        // Card(
         //   child: ListTile(
         //     title: Text("Ux Designer"),
         //     subtitle: Text("SkillCrunch"),
         //   ),
         // )
       // ],
      ),*/
    );

  }
}
