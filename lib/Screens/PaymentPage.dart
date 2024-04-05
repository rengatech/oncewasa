import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/ReviewSummaryPage.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Payment Method",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //image and text for container
            buildPaymentMethod('images/paypal.png', 'PayPal'),
            const SizedBox(height: 30.0),
            buildPaymentMethod('images/google.png', 'Google Pay'),
            const SizedBox(height: 30.0),
            buildPaymentMethod('images/apple.png', 'Apple Pay'),
            const SizedBox(height: 30.0),
            buildPaymentMethod('images/visa.png', '.... .... .... .... 5567'),
            const SizedBox(height: 30.0),
            buildPaymentMethod('images/express.png', '.... .... .... .... 7864'),
            const SizedBox(height: 50.0),
            const Divider(
              height: 0.1,
              color: Color.fromARGB(255, 245, 242, 242),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReviewSummaryPage(),
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
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 110),
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
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
                const SizedBox(width: 10),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Radio(
                  fillColor: MaterialStateColor.resolveWith(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return const Color(0xFF9610FF);
                      }
                      return const Color(0xFF9610FF);
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
