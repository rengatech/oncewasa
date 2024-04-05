import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/BookGeneration/PromptPage.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Title for Page',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Chapter Number",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2), 
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Page Number",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
               const SizedBox(height: 20),
            const Text(
              "Principle Text",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
              const SizedBox(height: 20),
            const Text(
              "Generate Image",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
              const SizedBox(height: 20),
            const Text(
              "Generate Illustration",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: " description...",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                 contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),  
              ),
            ),
           
           
            const SizedBox(height: 100.0),
               const Divider(
                height: 0.5,color: Color.fromARGB(255, 245, 242, 242),
              ),
              const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PromptPage(),
                        ),
                      );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF9610FF),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Generate Prompt For Cover Design",
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


