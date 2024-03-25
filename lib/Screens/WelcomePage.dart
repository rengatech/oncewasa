import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/BookDetailsPage.dart';
import 'package:oncewasa/Screens/SettingsPage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector( 
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()), 
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile.png'),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Welcome back'),
                    Image.asset(
                      "images/hand.png",
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                Text(
                  'Andrew Perry',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Image.asset(
            "images/frame.png",
            width: 100,
            height: 100,
          ),
          Image.asset(
            "images/pro.png",
            width: 100,
            height: 100,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookDetailsPage()),
                  );
                },
                child: Image.asset(
                  "images/editbook.png",
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/1_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Image.asset(
                      "images/2_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/3_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Image.asset(
                      "images/4_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
               SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset(
                      "images/5_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Image.asset(
                      "images/6_Story.png",
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
