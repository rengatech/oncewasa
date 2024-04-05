import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/UpgradeProPage.dart';
import 'package:oncewasa/Screens/PaymentMethods.dart';
import 'package:oncewasa/Screens/Settings/SecurityPage.dart';
import 'package:oncewasa/Screens/Settings/LanguagePage.dart';
import 'package:oncewasa/Screens/Settings/FollowUpPage.dart';
import 'package:oncewasa/Screens/Settings/HelpCenterPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Settings',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                    ),
                    const SizedBox(width: 10), 
                    const Column(
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
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UpgradeProPage()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: Image.asset(
                    'images/upgrade.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 20), 
              const Row(
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
              const SizedBox(height: 20), 
              // List of items
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.person),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Personal Info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Handle tap on Profile
                },
              ),
              const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.payment),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Payment Methods',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentMethodsPage()),
                  );
                },
              ),
               const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.security),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Security',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecurityPage()),
                  );
                },
              ),
                const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.language),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Language',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                  trailing: const Row(
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
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LanguagePage()),
                  );
                },
              
              ),
                const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.remove_red_eye),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
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
                   activeColor: const Color(0xFF9610FF), 
                 inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[300],
                ),
                onTap: () {
                  // Handle tap on Dark Mode
                },
              
              ),
               const SizedBox(height: 20), 
              const Row(
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
              const SizedBox(height: 20), 
              // List of items
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.follow_the_signs),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Follow us on Social Media',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FollowUpPage()),
                  );
                },
              ),
              const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.help_center),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Help Center',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HelpCenterPage()),
                  );
                },
              ),
               const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.privacy_tip),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Privacy Policy',
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
                const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.inbox_outlined),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'About OnceWasA',
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
                const SizedBox(height: 16.0), 
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                leading: const Icon(Icons.logout_sharp,color: Colors.red,),
                title: const Row(
                  children: [
                    SizedBox(width: 10), 
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
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
