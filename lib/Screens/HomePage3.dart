import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/LoginPage.dart';

class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
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
                          Image.asset(
                            "images/premium.png",
                            width: 500,
                            height: 500,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Enjoy all the benefits with",
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
                            "pro subscriptions",
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
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF9610FF),
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
                          EdgeInsets.symmetric(vertical: 15, horizontal: 200),
                      child: Text(
                        "Get Started",
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
