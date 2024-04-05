import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/WelcomePage.dart';


class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Create new password',
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        "images/lock.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Create you new password. If you forget it. Then you how to do forgot password.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
               const TextField(
                decoration: InputDecoration(
                  labelText: 'New Password',
                  // hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF9610FF),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
               const TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  // hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF9610FF),
                  ),
                ),
              ),
                const SizedBox(height: 80,),
              const Divider(height:0.1, color: Color.fromARGB(255, 245, 242, 242),),
               const SizedBox(height: 16.0,),
                 Center(
                child: ElevatedButton(
                  onPressed: () { _showSignInPopup(context); },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9610FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 110),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
void _showSignInPopup(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, 
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset("images/lockpubble.png"),
        ),
        content: const SizedBox(
          height: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Color(0xFF9610FF), fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
                Center(
                child: Text(
                  "Successful!",
                  style: TextStyle(color: Color(0xFF9610FF), fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
             
            
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

 
  Future.delayed(const Duration(seconds: 2), () {

  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomePage(),
      ),
    );
  });
}
