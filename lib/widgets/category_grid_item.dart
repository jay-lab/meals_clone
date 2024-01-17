import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_clone/screens/meal_detail.dart';

class CategoryGridItem extends StatelessWidget {
  final int itemNumber;

  const CategoryGridItem({
    super.key,
    required this.itemNumber,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push("/detail");
      },
      child: Stack(
        children: [
          const Placeholder(),
          Center(
            child: Text(
              itemNumber.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrangeAccent),
            ),
          ),
        ],
      ),
    );
  }
}
