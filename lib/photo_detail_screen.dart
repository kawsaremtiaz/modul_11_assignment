import 'package:flutter/material.dart';
import 'photo_model.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Detail'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(photo.imageUrl),
              SizedBox(height: 10),
              Text('Title: ${photo.title}'),
              SizedBox(height: 20),
              Text('ID: ${photo.id}'),
            ],
          ),
        ),
      ),
    );
  }
}
