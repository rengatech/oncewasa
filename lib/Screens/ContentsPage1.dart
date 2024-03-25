import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/Contentspage2.dart';

class ContentsPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Contents"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Number of Chapters",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " 01",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2), 
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Number of Pages",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " 01",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
             SizedBox(height: 20),
            Text(
              "Upload Logo",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: null, 
              decoration: InputDecoration(
                hintText: " Upload a Logo",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 100), 
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Upload Bar Code",
              style: TextStyle(
                fontSize: 15,
               color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: null, 
              decoration: InputDecoration(
                hintText: " Upload a bar code",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 100), 
              ),
            ),
            SizedBox(height: 30.0),
               Divider(
                height: 0.5,color: const Color.fromARGB(255, 245, 242, 242),
              ),
              SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContentsPage2(),
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
                      "Generate Cover Designs",
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
