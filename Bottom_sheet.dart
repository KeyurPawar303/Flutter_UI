import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Bottom Sheet Widget',style: TextStyle(color: Colors.black)),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Press For Options'), onPressed: (){
            showModalBottomSheet(
             // backgroundColor:Theme.of(context).primaryColor,
              isDismissible: false,
              elevation: 0,
              enableDrag: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
                context: context, builder: (context){
              return const  Column(
                mainAxisSize:MainAxisSize.min ,
                children: [
                  ListTile(
                    title: Text('Maharashtra'),
                    subtitle: Text('Pune'),
                  ),
                  ListTile(
                    title: Text('Madhya Pradesh'),
                    subtitle: Text('Indore'),
                  ),
                  ListTile(
                    title: Text('Uttar Pradesh'),
                    subtitle: Text('Ayodhya'),
                  ),
                  ListTile(
                    title: Text('Kashmir'),
                    subtitle: Text('Manali'),
                  ),
                  ListTile(
                    title: Text('Keral'),
                    subtitle: Text('WildLife'),
                  ),
                ],
              );
            });
        },
        ),
      ),
    );
  }
}
