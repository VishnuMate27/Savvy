import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            margin: EdgeInsets.all(32),
            child: Column(
              children: [
                SizedBox(
                  height: 152,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            'OTP Verification',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 32,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Enter the verification code we just sent on your email/Mobile no.',
                        style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Color(0xFF585858),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: new Border.all(
                          width: 1.0,
                          color: Color(0xFF35C2C1),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: new Border.all(
                          width: 1.0,
                          color: Color(0xFF35C2C1),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: new Border.all(
                          width: 1.0,
                          color: Color(0xFF35C2C1),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: new Border.all(
                          width: 1.0,
                          color: Color(0xFF35C2C1),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'g');
                  },
                  child: Container(
                    height: 55,
                    decoration: new BoxDecoration(
                      color: Color(0xFFEA384D),
                      borderRadius: BorderRadius.circular(4),
                      border: new Border.all(
                        width: 1.0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'VERIFY',
                        style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 218,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Didn’t Recieve code ?',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend Code',
                        style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 16,
                            color: Color(0xFFEA384D),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 32,
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
