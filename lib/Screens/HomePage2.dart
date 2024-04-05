import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/HomePage3.dart';
import 'package:oncewasa/Screens/LoginPage.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
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
                            "images/mobile2.png",
                            width: 500,
                            height: 450,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Enjoy all the benefits with",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "pro subscriptions",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              wordSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur . ",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
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
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? const Color(0xFF9610FF)
                              : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color(0xFFF5E7FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                      child: const Text(
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
                  color: const Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage3(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                      child: const Text(
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
