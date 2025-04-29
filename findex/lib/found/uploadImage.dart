import 'package:flutter/material.dart';

//1.upload the image
//2.enter the type
//3.get desc from Gemini

class UploadimageofFoundobject extends StatefulWidget {
  const UploadimageofFoundobject({super.key});

  @override
  State<UploadimageofFoundobject> createState() =>
      _UploadimageofFoundobjectState();
}

class _UploadimageofFoundobjectState extends State<UploadimageofFoundobject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //App Logo
            const Text('App logo', style: TextStyle(color: Colors.white)),
          ],
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          // Make the content scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Add receipt/item image
              GestureDetector(
                onTap: _getImage,
                child: Container(
                  height: 200, // Increased height for better visibility
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child:
                        _image == null
                            ? const Text(
                              'Add receipt / item image: +',
                              style: TextStyle(fontSize: 16),
                            )
                            : Image.network(
                              // Use Image.network
                              _image!.path, //Display the image
                              fit: BoxFit.cover,
                            ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Ask Gemini for description
              ElevatedButton(
                onPressed: _showGeminiDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'ask gemini for description',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),

              // Description
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("description"),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implement edit description functionality
                    setState(() {
                      _description = ''; // Clear the description for editing
                    });
                  },
                  child: const Text(
                    'edit description',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Submit application
              ElevatedButton(
                onPressed: () {
                  // Implement submit application functionality
                  // Show a dialog to confirm submission
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text('Submit Application'),
                          content: const Text(
                            'Are you sure you want to submit your application?',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                                // Add your submission logic here (e.g., send data to a server)
                                print('Application submitted!');
                                // Optionally, show a success message
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Application submitted successfully!',
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Submit'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'submit application',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: '+'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
