import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/PaymentPage.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  String? selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Plan",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
         centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            buildPlanRow(context, '1 Month', '\$5.00', 'Pro access for 1 month',
                '1 Month'),
            buildPlanRow(
                context, '3 Months', '\$14.00', 'You Save 10%', '3 Months'),
            buildPlanRow(
                context, '6 Months', '\$24.00', 'You Save 20%', '6 Months'),
            buildPlanRow(
                context, '12 Months', '\$40.00', 'You Save 30%', '12 Months'),
            buildPlanRow(context, 'Lifetime', '\$120.00',
                'Limited Same and after', 'Lifetime'),
            const SizedBox(height: 20.0),
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
                    builder: (context) => const PaymentPage(),
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

  Widget buildPlanRow(BuildContext context, String duration, String price,
      String description, String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedPaymentMethod = label;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Color.fromARGB(255, 229, 228, 228).withOpacity(0.5),
            //     spreadRadius: 3,
            //     blurRadius: 7,
            //     offset: Offset(0, 3),
            //   ),
            // ],
            color: const Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
