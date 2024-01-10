import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meals_clone/screens/meal_detail2.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // AppBar를 사용하기 위해 Scaffold로 랩핑
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: InkWell(
        onTap: () {
          context.go("/detail2");
        },
        child: Card(
          color: Colors.blueGrey,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.go("/detail2");
                    },
                    child: const Text('다음 Depth로 Move')),
                const SizedBox(height: 60),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('여기 누르면 첫번째 화면으로 이동(Navigator pop)')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
