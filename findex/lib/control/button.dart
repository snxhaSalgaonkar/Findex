import 'package:flutter/material.dart';

class buttonNavigationBar extends StatefulWidget {
  const buttonNavigationBar({super.key});

  @override
  State<buttonNavigationBar> createState() => _buttonNavigationBarState();
}

class _buttonNavigationBarState extends State<buttonNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: buttonNavigationBar());
  }
}
