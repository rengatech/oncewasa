import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/ReviewSummaryPage.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Payment Method"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //image and text for container
            buildPaymentMethod('images/paypal.png', 'PayPal'),
            SizedBox(height: 30.0),
            buildPaymentMethod('images/google.png', 'Google Pay'),
            SizedBox(height: 30.0),
            buildPaymentMethod('images/apple.png', 'Apple Pay'),
            SizedBox(height: 30.0),
            buildPaymentMethod('images/visa.png', 'Visa'),
            SizedBox(height: 30.0),
            buildPaymentMethod('images/express.png', 'Express'),
            SizedBox(height: 100.0),
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
                    builder: (context) => ReviewSummaryPage(),
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
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildPaymentMethod(String imageAsset, String label) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedPaymentMethod = label;
            });
          },
          child: Container(
            height: 90,
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                  child: Image.asset(
                    imageAsset,
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Radio(
                  fillColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return Color(0xFF9610FF);
                      }
                      return Color(0xFF9610FF);
                    },
                  ),
                  value: label,
                  groupValue: selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      selectedPaymentMethod = value as String;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
