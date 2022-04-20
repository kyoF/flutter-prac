import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.search), label: '検索'),
      BottomNavigationBarItem(icon: Icon(Icons.star), label: 'お気に入り'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
    ]);
  }
}
