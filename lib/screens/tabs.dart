import 'package:flutter/material.dart';
import 'package:meals_clone/screens/categories.dart';
// import 'package:riverpod/riverpod.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: const CategoriesScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.set_meal,
                size: 30,
              ),
              label: '카테고리'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                size: 30,
              ),
              label: '즐겨찾기')
        ],
        showSelectedLabels: false, // 선택된 레이블 숨기기
        showUnselectedLabels: false, // 선택되지 않은 레이블 숨기기
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
      ),
    );
  }
}
