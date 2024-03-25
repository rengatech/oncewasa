import 'package:flutter/material.dart';
import 'package:oncewasa/Screens/NewPasswordPage.dart';

class Otppage extends StatefulWidget {
  @override
  _OtppageState createState() => _OtppageState();
}

class _OtppageState extends State<Otppage> {
  final List<FocusNode> _focusNodes =
      List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void initState() {
    super.initState();
    _focusNodes[0].requestFocus();
  }

  void _updateTextField(int index, String value) {
    if (index >= 0 && index < _controllers.length) {
      if (value == 'X') {
        if (index > 0) {
          _controllers[index - 1].text = '';
          FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
        }
      } else {
        _controllers[index].text = value;
        if (value.isNotEmpty && index < _controllers.length - 1) {
          FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
        }
        _checkAllFieldsFilled(); 
      }
    }
  }

  void _checkAllFieldsFilled() {
    bool allFilled = true;
    for (TextEditingController controller in _controllers) {
      if (controller.text.isEmpty) {
        allFilled = false;
        break;
      }
    }
    if (allFilled) {
      // Navigate to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NewPasswordPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'OTP code verification',
                              ),
                              WidgetSpan(
                                child: Image.asset(
                                  "images/lock.jpg",
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'We have sent an OTP code to your email and ******yourdomain.com. Enter the OTP code below to verify',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 80.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                height: 68,
                                width: 64,
                                child: TextField(
                                  focusNode: _focusNodes[index],
                                  controller: _controllers[index],
                                  style:
                                      Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Column(
                            children: [
                              Text("Didn't receive email?"),
                              Text("You can resend code in 55 s"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: CustomKeyboardClipper(),
              child: NumericKeyboard(onKeyboardTap: (value) {
                _updateTextField(
                    _controllers.indexWhere(
                        (controller) => controller.text.isEmpty),
                    value);
              }),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class NumericKeyboard extends StatelessWidget {
  final Function(String) onKeyboardTap;

  NumericKeyboard({required this.onKeyboardTap});

  final List<String> _keys = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '*',
    '0',
    'X'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Color.fromARGB(255, 250, 248, 248),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => onKeyboardTap(_keys[i]),
                    child: NumericKey(_keys[i]),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 3; i < 6; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => onKeyboardTap(_keys[i]),
                    child: NumericKey(_keys[i]),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 6; i < 9; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => onKeyboardTap(_keys[i]),
                    child: NumericKey(_keys[i]),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => onKeyboardTap(_keys[9]),
                  child: NumericKey(_keys[9]),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => onKeyboardTap(_keys[10]),
                  child: NumericKey(_keys[10]),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => onKeyboardTap(_keys[11]),
                  child: NumericKey(_keys[11]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumericKey extends StatelessWidget {
  final String keyText;

  NumericKey(this.keyText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
      child: Center(
        child: Text(
          keyText,
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}

class CustomKeyboardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, 30);
    path.quadraticBezierTo(0, 0, 30, 0);
    path.lineTo(size.width - 30, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 30);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
