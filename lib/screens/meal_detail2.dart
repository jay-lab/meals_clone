import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: ElevatedButton(
            onPressed: () {
              // ------------ Go Router 사용 방식으로 첫번째 화면으로 이동 ------------
              context.go("/");
            },
            child: const Text("첫번째 탭 화면으로 이동"),
          ),
        ),
      ),
    );
  }
}
