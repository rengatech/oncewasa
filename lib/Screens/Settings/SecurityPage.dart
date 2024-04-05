import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

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
        title: const Text('Security', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text('Remember me',  style: TextStyle(
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
                activeColor: const Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20.0,),
              ListTile(
              title: const Text('Biometric ID',  style: TextStyle(
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
                activeColor: const Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               const SizedBox(height: 20.0,),
              ListTile(
              title: const Text('Face ID',  style: TextStyle(
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
                activeColor: const Color(0xFF9610FF),
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               const SizedBox(height: 20.0,),
              ListTile(
              title: const Text('SMS Authenticator',  style: TextStyle(
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
                activeColor: const Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
               const SizedBox(height: 20.0,),
              ListTile(
              title: const Text('Google Authenticator',  style: TextStyle(
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
                activeColor: const Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20.0,),
             ListTile(
                title: const Row(
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
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
              const SizedBox(height: 20.0),
                 Material(
                  color: const Color(0xFFF5E7FF),
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {
                     
                    },
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 170),
                      child: const Text(
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
