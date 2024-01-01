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

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    // ▼ 1. List<Widget> 사용방식 => 탭의  상태유지 불가
    // final List<Widget> _pages = [
    //   const CategoriesScreen(),
    //   const Placeholder(),
    // ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),

      // ▼ 1. List<Widget> 사용방식 => 탭의  상태유지 불가
      // body: _pages.elementAt(_selectedPageIndex),

      // ▼ 2. IndexedStack 사용방식 => 탭의 상태유지 가능
      body: IndexedStack(
        index: _selectedPageIndex,
        children: const [
          CategoriesScreen(),
          Placeholder(),
          // 다른 페이지 추가...
        ],
      ),
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
