import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/SignupScreen.dart';
import 'package:oncewasa/Screens/PersonalInfoSignUpPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        child: Column(children: [
          Expanded(
            child: Stack(alignment: Alignment.bottomCenter, children: [
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
                          "images/Logo.png",
                          width: 250,
                          height: 250,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Welcome! Let's dive into your account!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: 1,
                            wordSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fixedSize: Size(450, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/google.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fixedSize: Size(450, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fixedSize: Size(450, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/facebook.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Continue with Facebook",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fixedSize: Size(450, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/twitter.png",
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Continue with Twitter",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        Material(
                          color: Color(0xFF9610FF),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 150),
                              child: Text(
                                "Sign in with password",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => personalInfoSignUpPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Color(0xFF9610FF),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ]),
          ),
        ]),
      ),
    );
  }
}
