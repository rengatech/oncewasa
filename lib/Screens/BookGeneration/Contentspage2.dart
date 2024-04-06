import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/BookGeneration/CoverDesignPage.dart';

class ContentsPage2 extends StatelessWidget {
  const ContentsPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Contents",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What will your book be about?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 240, 240), 
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: const Color.fromARGB(255, 222, 221, 221)), 
              ),
              child: const TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: " Description...",
                  border: InputBorder.none,
                   contentPadding: EdgeInsets.symmetric(vertical: 100), 
                ),
              ),
            ),
            const SizedBox(height: 200.0),
            const Divider(
              height: 0.5,
              color: Color.fromARGB(255, 245, 242, 242),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CoverDesignPage(),
                      ),
                    );
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Generate Cover Designs",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
