import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/UpgradeProPage.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Settings'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SettingsPage()),
                        // );
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                    ),
                    SizedBox(width: 10), // Add space between the profile icon and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Andrew Perry'),
                          ],
                        ),
                        Text(
                          'Andrew Perry@yourdomain.com',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpgradeProPage()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Image.asset(
                    'images/upgrade.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 20), // Adding space between the previous content and the new row
              Row(
                children: [
                  Text(
                    'General',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 233, 232, 232),
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), 
              // List of items
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.person),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Personal Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Profile
                },
              ),
              SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.payment),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Payment Methods',
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
               SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.security),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Security',
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
                SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.language),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Language',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                  trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  // Add space between the arrow icon and text
                    Text(
                      'English (US)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                       SizedBox(width: 8),
                      Icon(Icons.arrow_forward_ios),
                  
                  ],
                ),
                onTap: () {
                  // Handle tap on Settings
                },
              
              ),
                SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.remove_red_eye),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Dark Mode',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: Switch(
                  value: false, // Set the initial value of the switch
                  onChanged: (value) {
                    // Handle toggling dark mode
                  },
                ),
                onTap: () {
                  // Handle tap on Dark Mode
                },
              
              ),
               SizedBox(height: 20), // Adding space between the previous content and the new row
              Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(width: 15.0,),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 233, 232, 232),
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), 
              // List of items
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.follow_the_signs),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Follow us on Social Media',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Profile
                },
              ),
              SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.help_center),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Help Center',
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
               SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.privacy_tip),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Privacy Policy',
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
                SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.inbox_outlined),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'About OnceWasA',
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
                SizedBox(height: 16.0), 
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                leading: Icon(Icons.logout_sharp,color: Colors.red,),
                title: Row(
                  children: [
                    SizedBox(width: 10), // Add space between the icon and text
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Settings
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
