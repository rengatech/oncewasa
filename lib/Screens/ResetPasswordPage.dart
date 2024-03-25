import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/OTPPage.dart';

class ResetPasswordPage extends StatelessWidget {
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
                      text: 'Reset your password',
                    ),
                    WidgetSpan(
                      child: Image.asset(
                        "images/key.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Please enter your email and we will send on OTP code in the next step to reset your password',
                style: TextStyle(
                  fontSize: 15,
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
              SizedBox(height: 500,),
             
              Divider(height:0.1, color: const Color.fromARGB(255, 245, 242, 242),),
               SizedBox(height: 16.0,),
                 Center(
                child: ElevatedButton(
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Otppage(),
                        ),
                      );},
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