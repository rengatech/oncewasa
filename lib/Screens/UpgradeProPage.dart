import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/PlanPage.dart';

class UpgradeProPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          // Background Image
           Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 3, 
            child: Image.asset(
              'images/Image.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'images/plan.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Divider(
                  height: 0.1,
                  color: const Color.fromARGB(255, 245, 242, 242),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanPage(),
                      ),
                    );
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
                      'Upgrade to PRO',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent, 
    );
  }
}
