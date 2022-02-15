import 'package:flutter/material.dart';

class NavigatorIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;

  const NavigatorIcon({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: IconButton(onPressed: onPress, icon: Icon(icon)),
    );
  }
}
