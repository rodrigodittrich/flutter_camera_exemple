import 'package:flutter/material.dart';
import 'package:flutter_camera/camera_helper/button_take_photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: ButtonTakePhoto(
                onSelectedImage: (image) {
                  print("image: $image");
                },
              )
            ),
          ],
        ),
      ),
    );    
  }
}