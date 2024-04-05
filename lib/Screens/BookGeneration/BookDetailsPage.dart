import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/BookGeneration/ContentsPage1.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Add Details",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Book Title",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: " Title",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Author Name",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: " Author Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "About Author",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "  click to upload photo",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 100),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "About Author",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: " About...",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 100),
                ),
              ),
              const SizedBox(height: 30.0),
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
                      builder: (context) => const ContentsPage1(),
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
                        "Contents",
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
      ),
    );
  }
}
