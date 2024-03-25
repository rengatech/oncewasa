import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/HomePage.dart'; // Import the NextPage

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _mockData().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  Future<void> _mockData() async {
    await Future.delayed(Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Logo.png',
              height: 700,
              width: 700,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9610FF)),
              strokeWidth: 7.0,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
