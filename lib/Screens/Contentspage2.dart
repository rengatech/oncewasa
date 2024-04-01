import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/CoverDesignPage.dart';

class ContentsPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Contents",textAlign: TextAlign.center),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What will your book be about?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 240, 240), 
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: const Color.fromARGB(255, 222, 221, 221)), 
              ),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: " Description...",
                  border: InputBorder.none,
                   contentPadding: EdgeInsets.symmetric(vertical: 100), 
                ),
              ),
            ),
            SizedBox(height: 500.0),
            Divider(
              height: 0.5,
              color: const Color.fromARGB(255, 245, 242, 242),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoverDesignPage(),
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
