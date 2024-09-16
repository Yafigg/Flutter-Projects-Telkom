import 'package:flutter/material.dart';

import 'date_widget.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  var _selectedIndex = 0;

  onTapBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Flutter"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.home,
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: const [
          Icon(Icons.more_vert),
          Icon(Icons.logout),
        ],
      ),
      body: const DateWidget(
        title: "tanggal widget",
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: onTapBar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: "User",
            )
          ]),
    );
  }
}
