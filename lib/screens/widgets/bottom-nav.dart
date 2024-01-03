import "package:flutter/material.dart";

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(3), bottom: Radius.zero),
          color: Colors.blue),
      child: BottomNavigationBar(
          elevation: 25,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          // currentIndex: 0,
          unselectedFontSize: 14,
          selectedFontSize: 16,
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
            if (currentIndex == 0) {
              _BottomNavState();

              Navigator.pushReplacementNamed(context, "/Home");
            }
            if (currentIndex == 1) {
              Navigator.pushReplacementNamed(context, "/StudentProfile");
            }
            if (currentIndex == 2) {
              Navigator.pushReplacementNamed(context, "/Transactions");
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Student Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.description), label: "Transactions"),
          ]),
    );
  }
}
