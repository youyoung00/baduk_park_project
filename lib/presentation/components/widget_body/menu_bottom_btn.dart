import 'package:flutter/material.dart';

class MenuBottomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;

  const MenuBottomButton({
    Key? key,
    required this.onPress,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: IconButton(
            icon: const Icon(
              Icons.edit,
            ),
            onPressed: onPress,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
