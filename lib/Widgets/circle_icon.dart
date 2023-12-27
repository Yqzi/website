import 'package:flutter/material.dart';

class IconCircle extends StatelessWidget {
  final IconData i;
  final String name;

  const IconCircle(this.i, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 228, 222, 222),
          radius: 50,
          child: Icon(
            i,
            size: 40,
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
