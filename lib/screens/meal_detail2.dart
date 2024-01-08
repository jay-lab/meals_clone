import 'package:flutter/material.dart';
import 'package:meals_clone/screens/tabs.dart';

class MealDetailsScreen2 extends StatelessWidget {
  const MealDetailsScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page - 2'),
      ),
      body: Card(
        color: Colors.orange,
        child: Center(
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (ctx) => const TabScreen())
              // );

              // 첫번째 스택으로 돌아가기 위한 로직
              Navigator.of(context).popUntil(
                ModalRoute.withName('/'),
              );
            },
            child: const Text('Test Page - 2'),
          ),
        ),
      ),
    );
  }
}
