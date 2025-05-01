import 'package:findex/found/uploadImage.dart';
// import 'package:findex/found/uploadImage2.dart';
import 'package:flutter/material.dart';

//home screen
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Findex')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FloatingActionButton(
              onPressed: () {
                print('Welcome to findex');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Uploadimage2()),
                // );
              },
              child: Icon(Icons.star),
            ),
          ),
        ],
      ),
    );
  }
}
