import 'package:findex/found/uploadImage.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadimageofFoundobject(),
                  ),
                );
              },
              child: Icon(Icons.star),
            ),
          ),
        ],
      ),
    );
  }
}
