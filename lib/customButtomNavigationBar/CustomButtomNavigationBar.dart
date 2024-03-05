import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomButtomNavigationBar> createState() => _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
       const BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_outlined),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline_outlined , size: 45.w),
          label: '',
        ),
       const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          label: '',
        ),
       const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}

