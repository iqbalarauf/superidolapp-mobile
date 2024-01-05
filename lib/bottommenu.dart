import 'package:flutter/material.dart';
import 'package:superidolapp/main.dart';
import 'package:superidolapp/riwayat.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;
  final List<Widget> body = [HomePage(), Riwayat()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(39, 67, 1, 247)),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history, color: Color.fromARGB(39, 67, 1, 247)),
              label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.usb_rounded,
                  color: Color.fromARGB(39, 67, 1, 247)),
              label: "Akun"),
        ],
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
