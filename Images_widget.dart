import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
    //var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('ImageWidget'),
        ),
        body: Center(
          child: Container(
            height: 400, //screenHeight,
            width: 350, //screenwidth,
            /* child: CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),,*/
            // CachedNetworkImage() is use to load image from internet and store in cache memory cant formed due to dependancy
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 5,
                    color: Colors.grey.shade800)
              ],
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              image:const DecorationImage(
                image: AssetImage('assets/travel.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ));
  }
}
