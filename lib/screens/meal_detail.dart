import 'package:flutter/material.dart';
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
      body: Card(
        color: Colors.blueGrey,
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Center(
            child: Text('Test Page'),
          ),
        ),
      ),
    );
  }
}
