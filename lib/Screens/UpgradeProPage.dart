import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/PlanPage.dart';

class UpgradeProPage extends StatelessWidget {
  const UpgradeProPage({super.key});

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
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
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
                const Divider(
                  height: 0.1,
                  color: Color.fromARGB(255, 245, 242, 242),
                ),
             
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlanPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9610FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90),
                    ),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 100),
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
      backgroundColor: Colors.white, 
    );
  }
}
