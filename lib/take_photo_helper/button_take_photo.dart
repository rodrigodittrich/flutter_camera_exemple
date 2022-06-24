import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/take_photo_helper/take_photo.dart';

class ButtonTakePhoto extends StatelessWidget {
  final Function(XFile?) onSelectedImage;
  
  const ButtonTakePhoto({
    Key? key,
    required this.onSelectedImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => TakePhoto(
          onSelectedImage: (image) {
            if(image != null) onSelectedImage(image);
            Navigator.of(context).pop();
          },
        )));
      },      
      child: const Text("Tirar foto"),
    );
  }
}
