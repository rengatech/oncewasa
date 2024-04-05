import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  List<String> suggestedLanguages = ['English(US)', 'English(UK)'];
  List<String> allLanguages = [
    'Tamil',
    'Spanish',
    'Hindi',
    'German',
    'French',
    'Arabic',
    'Bengal',
    'Japanese',
    'Russian',
    'Korean',
    'Indonesia',
  ];

  String selectedLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Language', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:Row(
                children: [
                  Text(
                    'Suggested',
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
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: suggestedLanguages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(suggestedLanguages[index]),
                  trailing: selectedLanguage == suggestedLanguages[index]
                      ? const Icon(
                          Icons.check,
                          color: Color(0xFF9610FF),
                          size: 30,
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      selectedLanguage = suggestedLanguages[index];
                    });
                  },
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
            child:Row(
                children: [
                  Text(
                    'Languages',
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
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: allLanguages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(allLanguages[index]),
                  trailing: selectedLanguage == allLanguages[index]
                      ? const Icon(
                          Icons.check,
                          color: Color(0xFF9610FF),
                           size: 30,
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      selectedLanguage = allLanguages[index];
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
