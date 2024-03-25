import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/LastPage.dart';

class PromptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Prompt For Cover Design'),
        backgroundColor: Colors.white,
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Write Prompt For Generation Cover",
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
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
            
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
                      "Generate Illustrations",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/Post.png', 
              fit: BoxFit.cover,
               width: double.infinity,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF9610FF),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white),
                        Text(
                          "Front Cover",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
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
                          "Back Cover",
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
              SizedBox(height: 50.0),
            GestureDetector(
              onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LastPage(),
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
                      "Generate Last Page Design",
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
