import 'package:flutter/material.dart';

class AD extends StatelessWidget {
  final String adImg;
  const AD({Key? key, required this.adImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Image.network(adImg),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.white,
              width: 32,
              height: 16,
              child: Row(
                children: const [
                  Icon(
                    Icons.info_outlined,
                    size: 16.0,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.clear_outlined,
                    size: 16.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
