import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/OTPPage.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
              const SizedBox(height: 16.0),
              const Text(
                'Please enter your email and we will send on OTP code in the next step to reset your password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 80,),
             
              const Divider(height:0.1, color: Color.fromARGB(255, 245, 242, 242),),
               const SizedBox(height: 16.0,),
                 Center(
                child: ElevatedButton(
                  onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const Otppage(),
                        ),
                      );},
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