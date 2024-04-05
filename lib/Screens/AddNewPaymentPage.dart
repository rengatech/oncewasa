import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/AddNewPaymentMethod.dart';
import 'package:oncewasa/Screens/Settings/SettingsPage.dart';

class AddNewPaymentPage extends StatefulWidget {
  const AddNewPaymentPage({super.key});

  @override
  _AddNewPaymentPageState createState() => _AddNewPaymentPageState();
}

class _AddNewPaymentPageState extends State<AddNewPaymentPage> {
  TextEditingController cardHolderNameController = TextEditingController(text: 'Andrew Perry');
  TextEditingController cardNumberController = TextEditingController(text: '7658 5884 2587 3698');
  TextEditingController expiryDateController = TextEditingController(text: '10/26');
  TextEditingController cvvController = TextEditingController(text: '688');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Payment",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
        backgroundColor: Colors.white,
      automaticallyImplyLeading: false, 
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context,  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),);
            },
            icon: const Icon(Icons.close), 
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Image.asset(
                  "images/card.png",
                  height: 200,
                ),
            TextFormField(
              controller: cardHolderNameController,
              decoration: const InputDecoration(
                labelText: 'Card Holder Name',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.black),
                contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: cardNumberController,
              decoration: const InputDecoration(
                labelText: 'Card Number',
                hintText: 'xxxx xxxx xxxx xxxx',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.black),
                contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: expiryDateController,
                    decoration: const InputDecoration(
                      labelText: 'Expiry Date',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF9610FF)), 
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF9610FF)), 
                      ),
                    ),
                  ),
                ),
              IconButton(
  onPressed: () async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 10),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith( 
            colorScheme: const ColorScheme.light(primary: Color(0xFF9610FF)), 
            dialogBackgroundColor: Colors.white, 
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null) {
      setState(() {
        expiryDateController.text = pickedDate.toString();
      });
    }
  },
  icon: const Icon(Icons.calendar_today, color: Colors.black), 
),
              ],
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: cvvController,
              decoration: const InputDecoration(
                labelText: 'CVV',
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0, color: Colors.black),
                contentPadding: EdgeInsets.symmetric(vertical: 25.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF9610FF)), 
                ),
              ),
            ),
          //  const SizedBox(height: 20),
                const Divider(
                height: 0.5,color: Color.fromARGB(255, 245, 242, 242),
              ),
              const SizedBox(height: 16.0,),
              Center(
                child:
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewPaymentMethod(),
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
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
              ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
