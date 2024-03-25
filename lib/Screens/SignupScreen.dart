import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/ResetPasswordPage.dart';
import 'package:oncewasa/Screens/WelcomePage.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Welcome ',
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        "images/hand.png",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Please enter your Email & Password to sign in.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF9610FF),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                    activeColor: Color(0xFF9610FF),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Color(0xFF9610FF);
                      }
                      return null;
                    }),
                    side: BorderSide(
                      color: Color(0xFF9610FF),
                      width: 3.0,
                    ),
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Divider(
                height: 0.5,color: const Color.fromARGB(255, 245, 242, 242),
              ),
              SizedBox(height: 50),
              Center(
                child: InkWell(
                  onTap: () {  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>ResetPasswordPage(),
                        ),
                      );},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Color(0xFF9610FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Don`t have an account? Sign Up',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/google.png",
                        width: 30,
                        height: 50,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: Icon(
                          Icons.apple,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/facebook.png",
                        width: 30,
                        height: 50,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/twitter.png",
                        width: 30,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
                Divider(
                height: 0.5,color: const Color.fromARGB(255, 245, 242, 242),
              ),
              SizedBox(height: 16.0,),
              Center(
                child: ElevatedButton(
              onPressed: () {
                  _showSignInPopup(context);
                },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9610FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 150),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
void _showSignInPopup(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevent dialog dismissal by tapping outside
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset("images/popup.png"),
        ),
        content: Container(
          height: 180.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Sign in Successful!",
                  style: TextStyle(color: Color(0xFF9610FF), fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
            
              SizedBox(height: 16.0),
              Center(
                child: Text("Please wait..."),
              ),
              SizedBox(height: 10),
              Center(
                child: Text("You will be directed to the homepage"),
              ),
              SizedBox(height: 16.0,),
                Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF9610FF),
                   strokeWidth: 7.0,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

 
  Future.delayed(Duration(seconds: 2), () {

  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ),
    );
  });
}
}