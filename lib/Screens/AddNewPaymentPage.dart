import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/AddNewPaymentMethod.dart';
import 'package:oncewasa/Screens/SettingsPage.dart';

class AddNewPaymentPage extends StatefulWidget {
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
        title: Text("Add New Payment",textAlign: TextAlign.center),
         centerTitle: true,
        backgroundColor: Colors.white,
      automaticallyImplyLeading: false, 
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context,  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),);
            },
            icon: Icon(Icons.close), 
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
              decoration: InputDecoration(
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
            SizedBox(height: 10.0),
            TextFormField(
              controller: cardNumberController,
              decoration: InputDecoration(
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
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: expiryDateController,
                    decoration: InputDecoration(
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
            colorScheme: ColorScheme.light(primary: Color(0xFF9610FF)), 
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
  icon: Icon(Icons.calendar_today, color: Colors.black), 
),
              ],
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: cvvController,
              decoration: InputDecoration(
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
           SizedBox(height: 80),
                Divider(
                height: 0.5,color: const Color.fromARGB(255, 245, 242, 242),
              ),
              SizedBox(height: 16.0,),
              Center(
                child:
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewPaymentMethod(),
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
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 150),
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
