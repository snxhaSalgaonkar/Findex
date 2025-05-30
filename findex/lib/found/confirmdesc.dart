import 'package:flutter/material.dart';

//1.display the desc given by gemini
//2.edit option
//3.send the desc to database
class Confirmdesc extends StatefulWidget {
  const Confirmdesc({super.key});

  @override
  State<Confirmdesc> createState() => _ConfirmdescState();
}

class _ConfirmdescState extends State<Confirmdesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Image page"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  print('Take image from Image picker');
                },
                child: Text('Upload Image'),
              ),
            ),
          ),

          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print("Take Desc from Gemini");
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 142, 247, 247),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text('Ask Gemini'),
          ),
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                height: 250,
                width: double.infinity,
                color: const Color.fromARGB(255, 150, 210, 152),
                child: Center(child: Text('Desc will appear here')),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
