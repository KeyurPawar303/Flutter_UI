import 'dart:ui';

import 'package:flutter/material.dart';

class InstaWidget extends StatelessWidget {
  const InstaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: const Text(
          'UserName',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              //olor: Colors.red,
              child:  Row(
                children: [
                  Container(
                    //color: Colors.purple,
                    width: 175,
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(radius: 55,
                            backgroundImage: NetworkImage('https://designimages.appypie.com/profilepicture/profilepicture-2-portrait-head.jpg'),),
                          Text('UserName',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text('Random Bio of user',),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30,right: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text('0',style: TextStyle(fontSize: 20),),
                                    Text('Posts',style: TextStyle(fontSize: 14),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('426',style: TextStyle(fontSize: 20),),
                                    Text('Followers',style: TextStyle(fontSize: 14),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('436',style: TextStyle(fontSize: 20),),
                                    Text('Following',style: TextStyle(fontSize: 14),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                         child:  Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Expanded(
                               child: Container(
                               height: 50,
                                 width: 140,
                                 child: ElevatedButton(onPressed: (){},
                                 child: Text('Follow',style: TextStyle(fontSize: 20,color: Colors.white ),),
                                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8),
                               child: Container(
                                 height: 50,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   border: Border.all(color: Colors.blue),
                                   shape: BoxShape.circle,
                                   //color: Colors.blue
                                 ),
                                 child: Icon(Icons.arrow_downward,color: Colors.blue,),
                               ),
                             )
                           ],
                         ),
                        )
                      ],
                    ),
                    //color: Colors.orange,
                  ))
                ],
              ),
            ),
            Container(
              height: 140,
              //color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue
                        ),
                      ),
                      Text('Title')
                    ],
                  );
                },
              ),
            ),
            Container(
              height:50,
              //color: Colors.red,
              child: Row(
                children: [

                       Container(
                          height: 50,
                           width: 200,
                           child: ElevatedButton(onPressed: (){}, child: Text('Posts'),

                           )),
                  Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(onPressed: (){}, child: Text('Posts'))),
                ],
              ),
            ),

            Expanded(child: Container(
              child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (contex, index){
                return Container(
                  margin: EdgeInsets.all(4),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.shade200
                  ),
                );
              }),
             // color: Colors.yellow,
            ))
          ],
        ),
      ),
    );
  }
}
