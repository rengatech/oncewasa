import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/HomePage2.dart';
import 'package:oncewasa/Screens/LoginPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/mobile.png"),
                          SizedBox(height: 20),
                          Text(
                            "An AI-powered",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "story-and book- ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "production application ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur . ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Fugit ad iure accusantium veritatis ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/mobile.png"),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/mobile.png"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(3, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? Color(0xFF9610FF)
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFFF5E7FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Color(0xFF9610FF),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage2(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
