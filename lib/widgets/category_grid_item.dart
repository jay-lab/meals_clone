import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  final int itemNumber;

  const CategoryGridItem({
    super.key,
    required this.itemNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Placeholder(),
        Center(
          child: Text(
            itemNumber.toString(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.deepOrangeAccent),
          ),
        ),
      ],
    );
  }
}
