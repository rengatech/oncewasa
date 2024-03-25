import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/PromptPage.dart';

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Title for Page'),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chapter Number",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2), 
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Page Number",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
               SizedBox(height: 20),
            Text(
              "Principle Text",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
              SizedBox(height: 20),
            Text(
              "Generate Image",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
              SizedBox(height: 20),
            Text(
              "Generate Illustration",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
           
            SizedBox(height: 250.0),
               Divider(
                height: 0.5,color: const Color.fromARGB(255, 245, 242, 242),
              ),
              SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PromptPage(),
                        ),
                      );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Generate Prompt For Cover Design",
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white), 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


