import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '検索',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attachment),
          label: '保存した条件',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: '閲覧履歴',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'お気に入り',
        ),
      ],
    );
  }
}
