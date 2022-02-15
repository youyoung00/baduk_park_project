import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final String borderName;

  const BorderButton({Key? key, required this.borderName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(8)),
        width: 240,
        height: 40,
        child: TextButton(onPressed: () {}, child: Text(borderName)));
  }
}
