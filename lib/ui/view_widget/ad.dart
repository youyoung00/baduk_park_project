import 'package:flutter/material.dart';

class AD extends StatelessWidget {
  const AD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: Image.network(
          'https://cdn.pixabay.com/photo/2016/11/20/08/33/camera-1842202__480.jpg'),
    );
  }
}
