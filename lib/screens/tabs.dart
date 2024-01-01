import 'package:flutter/material.dart';
import 'package:meals_clone/screens/categories.dart';
// import 'package:riverpod/riverpod.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: const CategoriesScreen(),
    );
  }
}
