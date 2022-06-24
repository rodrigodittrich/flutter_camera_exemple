import 'package:flutter/material.dart';
import 'package:flutter_camera/take_photo_helper/take_photo_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: TakePhotoHelper(
                onSelectedImage: (image) {
                  if(image != null) {
                    setState(() {
                      imagePath = image.path;
                    });
                  }
                },
              )
            ),
            if(imagePath != null) Image.network(imagePath!)
          ],          
        ),
      ),
    );    
  }
}