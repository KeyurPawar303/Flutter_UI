import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImagePeakerWidget extends StatefulWidget {
  const ImagePeakerWidget({super.key});

  @override
  State<ImagePeakerWidget> createState() => _ImagePeakerWidgetState();
}

class _ImagePeakerWidgetState extends State<ImagePeakerWidget> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker'),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                height: 300,
                width: double.infinity,
                child: file == null? const Text('Image Not Picked'):Image.file(File(file!.path),fit:BoxFit.cover,
               )
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () async{
                final XFile? photo = await _imagePicker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
                print('Image Saved');
                print(photo!.path);
              }, child: const Text('Picker')),
              ElevatedButton(onPressed: () async{
                final List<XFile>? photos = await _imagePicker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                print('Image Saved');
                for(int i = 0 ; i < files!.length; i++) {
                  print(photos![i].path);
                }
              }, child: const Text('Picker')),
            ],
          )),
    );
  }
}
