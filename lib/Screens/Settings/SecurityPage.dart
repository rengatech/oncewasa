import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool isRememberEnabled = false;
   bool isBiometricIdEnabled = false;
    bool isfaceIdEnabled = false;
     bool isSMSEnabled = false;
      bool isGoogleEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Security', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Remember me',  style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
              trailing: Switch(
                value: isRememberEnabled,
                onChanged: (value) {
                  setState(() {
                    isRememberEnabled = value;
                  });
                },
                activeColor: Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20.0,),
              ListTile(
              title: Text('Biometric ID',  style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
              trailing: Switch(
                value: isBiometricIdEnabled,
                onChanged: (value) {
                  setState(() {
                    isBiometricIdEnabled = value;
                  });
                },
                activeColor: Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               SizedBox(height: 20.0,),
              ListTile(
              title: Text('Face ID',  style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
              trailing: Switch(
                value: isfaceIdEnabled,
                onChanged: (value) {
                  setState(() {
                    isfaceIdEnabled = value;
                  });
                },
                activeColor: Color(0xFF9610FF),
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               SizedBox(height: 20.0,),
              ListTile(
              title: Text('SMS Authenticator',  style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
              trailing: Switch(
                value: isSMSEnabled,
                onChanged: (value) {
                  setState(() {
                    isSMSEnabled = value;
                  });
                },
                activeColor: Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               SizedBox(height: 20.0,),
              ListTile(
              title: Text('Google Authenticator',  style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
              trailing: Switch(
                value: isGoogleEnabled,
                onChanged: (value) {
                  setState(() {
                    isGoogleEnabled = value;
                  });
                },
                activeColor: Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20.0,),
             ListTile(
                title: Row(
                  children: [
                    Text(
                      'Device Management',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
              SizedBox(height: 20.0),
                 Material(
                  color: Color(0xFFF5E7FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                     
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 170),
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                          color: Color(0xFF9610FF),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
