import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Help Center',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Steps(),
          ],
        ),
      ),
    );
  }
}

class Step {
  Step(
    this.title,
    this.body,
    [this.isExpanded = false]
  );
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('What is OnceWasA?', 'Install Flutter development tools according to the official documentation.'),
    Step('Is the OnceWasA App free?', 'Open your terminal, run `flutter create <project_name>` to create a new project.'),
    Step('How does the OnceWasA app work?', 'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);
  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  final List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _renderSteps(),
      ],
    );
  }

  Widget _renderSteps() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Step step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(step.title),
            );
          },
          body: ListTile(
            title: Text(step.body),
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HelpCenterPage(),
  ));
}
