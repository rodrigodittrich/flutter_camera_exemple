import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/take_photo_helper/camera_preview_widget.dart';

class TakePhoto extends StatefulWidget {
  final Function(XFile?)? onSelectedImage;
  
  const TakePhoto({
    Key? key,
    this.onSelectedImage,
  }) : super(key: key);

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tirar um foto')),
      body: FutureBuilder<List<CameraDescription>>(
        future: availableCameras(),
        builder: (context, cameras) {          
           if (cameras.connectionState == ConnectionState.done) {
            return CameraPreviewWidget(
              onSelectedImage: (image) {
                widget.onSelectedImage!(image);
              }, 
              camera: cameras.data!.first            
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }          
        },
      ),
    ); 
  }
}