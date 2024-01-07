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

  final List<Map<String, dynamic>> tabsList = [
    {'page': const CategoriesScreen(), 'title': "categories"},
    {'page': const Placeholder(), 'title': "Placeholder"},
  ];

  @override
  Widget build(BuildContext context) {

    // ▼ 1. List<Widget> 사용방식 => 탭의  상태유지 불가
    // final List<Widget> _pages = [
    //   const CategoriesScreen(),
    //   const Placeholder(),
    // ];
    return Scaffold(
      appBar: AppBar(
        title: Text(tabsList[_selectedPageIndex]['title'], style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      // ▼ 1. List<Widget> 사용방식 => 탭의  상태유지 불가
      // body: _pages.elementAt(_selectedPageIndex),

      // ▼ 2. IndexedStack 사용방식 => 탭의 상태유지 가능
      body: IndexedStack(
        index: _selectedPageIndex,
        // children: const [
        //   CategoriesScreen(),
        //   Placeholder(),
        //   // 다른 페이지 추가...
        // ],
        children: tabsList.map((item) => item['page'] as Widget).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
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
        showSelectedLabels: true, // 선택된 레이블 숨기기
        showUnselectedLabels: false, // 선택되지 않은 레이블 숨기기
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        // type: BottomNavigationBarType.shifting, // 탭 전환시 소소한 애니메이션 < 그런데 적용하면 backgroundColor가 벗겨지는 현상이 발생.
        selectedItemColor: Colors.white, // 선택된 요소 색
        unselectedItemColor: Colors.grey, // 선택되지 않은 요소 색
        backgroundColor: Colors.black,
      ),
    );
  }
}
