import 'package:flutter/material.dart';

class FollowUpPage extends StatefulWidget {
  @override
  _FollowUpPageState createState() => _FollowUpPageState();
}

class _FollowUpPageState extends State<FollowUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Follow us on Social Media', textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //image and text for container
            buildPaymentMethod('images/twitter.png', 'Twitter'),
            SizedBox(height: 20.0),
            buildPaymentMethod('images/insta.png', 'Instagram'),
            SizedBox(height: 20.0),
            buildPaymentMethod('images/discord.png', 'Discord'),
            SizedBox(height: 20.0),
            buildPaymentMethod('images/reddt.png', 'Reddt'),
            SizedBox(height: 20.0),
            buildPaymentMethod('images/youtube.png', 'YouTube'),
            SizedBox(height: 20.0),
             buildPaymentMethod('images/tele.png', 'Telegram'),
          ],
        ),
      ),
    );
  }
   Widget buildPaymentMethod(String imageAsset, String label) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: GestureDetector(
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
                 Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.arrow_forward_ios, size: 20,),
              ),
              ],
            ),
          ),
        ),
      ),
    );
   }
}