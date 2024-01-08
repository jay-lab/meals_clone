import 'package:flutter/material.dart';
import 'package:meals_clone/screens/meal_detail2.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // const Card(
        //     child: Center(
        //       child: Text('Test Page'),
        //   ),
        // );

        // AppBar를 사용하기 위해 Scaffold로 랩핑
        Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const MealDetailsScreen2(),
            ),
          );
          // print('test');
        },
        child: Card(
          color: Colors.blueGrey,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Center(
              child: Text('Test Page'),
            ),
          ),
        ),
      ),
    );
  }
}
