import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/ContentsPage1.dart';

class BookDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Add Details"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Book Title",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " Title",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2), 
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Author Name",
              style: TextStyle(
                fontSize: 15,
              color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: " Author Name",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
             SizedBox(height: 20),
            Text(
              "About Author",
              style: TextStyle(
                fontSize: 15,
               color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: null, 
              decoration: InputDecoration(
                hintText: "  click to upload photo",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 100), 
              ),
            ),
            SizedBox(height: 20),
            Text(
              "About Author",
              style: TextStyle(
                fontSize: 15,
                 color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: null, 
              decoration: InputDecoration(
                hintText: " About...",
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
                          builder: (context) =>ContentsPage1(),
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
                      "Contents",
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
