import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/TitlePage.dart';

class CoverDesignPage extends StatelessWidget {
  final List<String> imagePaths = [
    'images/mobile.png',
    'images/mobile2.png',
    'images/story1.png',
    'images/story2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cover Designs"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9610FF)),
                      strokeWidth: 8.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Generating...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: imagePaths.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return _buildImage(
                    imagePaths[index], 'Cover ${index + 1}');
              },
            ),
            SizedBox(height: 50.0),
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
                    builder: (context) => TitlePage(),
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

  Widget _buildImage(String imagePath, String imageName) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 80.0,
          width: 150.0,
        ),
        SizedBox(height: 5.0),
        Text(
          imageName,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
