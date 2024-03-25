import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/WelcomePage.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String fileName = "";
  String selectedGender = 'Male'; 
  @override
  void initState() {
    super.initState();
  }

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
                      text: 'Enter personal info 📋 ',
                    ),
                    // WidgetSpan(
                    //   child: Image.asset(
                    //     "images/clipboard.jpg",
                    //     width: 40,
                    //     height: 40,
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Please enter your profile. Don\'t worry, only you can see your personal data. No one else will be able to see it. Or you can skip it for now.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.account_circle, size: 80, color: Colors.white),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          padding: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xFF9610FF),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit, color: Colors.white, size: 10,),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Full Name',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Phone Number',
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Date Of Birth',
                  hintText: 'Date Of Birth',
                  suffixIcon: Icon(
                    Icons.calendar_month,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                ),
              ),
                 SizedBox(height: 30.0),
                // Gender Label and Radio Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 'Male',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value.toString();
                              });
                            },
                            activeColor: Color(0xFF9610FF),
                          ),
                          Text('Male'),
                          Radio(
                            value: 'Female',
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value.toString();
                              });
                            },
                            activeColor: Color(0xFF9610FF),
                          ),
                          Text('Female'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: Color.fromARGB(255, 234, 226, 240),
                      borderRadius: BorderRadius.circular(50),
                      child: InkWell(
                        onTap: () {
                         _showSignInPopup(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),
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
                         _showSignInPopup(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                          child: Text(
                            "Continue",
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
          child: Image.asset("images/Group.png"),
        ),
        content: Container(
          height: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  "Sign Up Sucessfully!",
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