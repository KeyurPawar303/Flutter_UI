import 'package:flutter/material.dart';
class CloningUi extends StatefulWidget {
  const CloningUi({super.key});

  @override
  State<CloningUi> createState() => _CloningUiState();
}

class _CloningUiState extends State<CloningUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(child:
              Container(
                height: 500,
              //  color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(child: Container(
                      height: 450,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/6e/b1/6a/caption.jpg?w=1200&h=-1&s=1'),
                        fit: BoxFit.cover)
                      ),
                    )),
                    const Positioned(
                        bottom: 0,
                        right: 25,
                        child:
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://designimages.appypie.com/profilepicture/profilepicture-2-portrait-head.jpg'),
                        )
                    ),
                    Positioned(
                        top: 55,
                        left: 25,
                        child: Container(
                          height: 40,
                      child:const Row(

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.arrow_back),
                              SizedBox(width: 310),
                              Icon(Icons.favorite_border)
                            ],
                          )
                        ],
                      ),
                    ))
                  ],

                )
              )),
            ]),
          Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            //color:Colors.blue,
            child:const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tour To Tag Mahal Agra, India',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text('Description of tour to taj mahal',style: TextStyle(fontSize: 15,color: Colors.grey),)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 50,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20',Icons.favorite),
                  rowIconText('34',Icons.upload_file),
                  rowIconText('82',Icons.comment_bank_outlined),
                  rowIconText('282',Icons.emoji_emotions_outlined)
                ],
              ),
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(12),
            child: const Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate"),
          )
        ],
      ),
    );
  }
  Widget rowIconText(String text,IconData icon){
    return Row(
      children: [
        Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       const  SizedBox(width:10),
        Icon(icon)
      ],
    );
  }
}
