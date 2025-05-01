import 'package:findex/control/lostorfound.dart';
import 'package:findex/control/profile.dart';
import 'package:findex/home.dart';
import 'package:flutter/material.dart';

class buttonNavigationBar extends StatefulWidget {
  const buttonNavigationBar({super.key});

  @override
  State<buttonNavigationBar> createState() => _buttonNavigationBarState();
}

class _buttonNavigationBarState extends State<buttonNavigationBar> {
  int indexx = 0;
  final List<Widget> screen = [Home(), Profilepage(), Lostorfound()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            indexx = 2;
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  indexx = 0;
                });
              },
              child: Icon(
                Icons.home,
                size: 27,
                //color: 0 == indexx ? maincolor : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexx = 1;
                });
              },
              child: Icon(
                Icons.person,
                size: 27,
                //color: 0 == indexx ? maincolor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: screen[indexx],
    );
  }
}
