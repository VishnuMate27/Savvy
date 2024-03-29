import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xFF585858);
      }
      return Color(0xFFEA384D);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            margin: EdgeInsets.all(32),
            child: Column(
              children: [
                SizedBox(
                  height: 176,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Create new password',
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
                SizedBox(
                  height: 102,
                ),
                Container(
                  height: 47.0,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: new Border.all(
                      color: Color(0xFF585858),
                      width: 1.0,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '       Password',
                      suffixIcon: Icon(CupertinoIcons.eye_solid),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 47.0,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: new Border.all(
                      color: Color(0xFF585858),
                      width: 1.0,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '       Confirm password',
                      suffixIcon: Icon(CupertinoIcons.eye_solid),
                      //(CupertinoIcons.eye_solid)
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'Agree to',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'terms and condition',
                        style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 12,
                            color: Color(0xFFEA384D),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 56,
                ),
                Container(
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
                      'REGISTER',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 102,
                ),
                Row(
                  children: [
                    Container(
                        width: 105,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: new Border.all(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                        child: Container(
                          height: 5.0,
                          width: 5.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/facebook_ic.png'),
                            ),
                            shape: BoxShape.circle,
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 105,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: new Border.all(
                          color: Color(0xFFDADADA),
                        ),
                      ),
                      child: Container(
                        height: 5.0,
                        width: 5.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/google_ic.png'),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 105,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: new Border.all(
                            color: Color(0xFFDADADA),
                          ),
                        ),
                        child: Container(
                          height: 5.0,
                          width: 5.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/cib_apple.png'),
                            ),
                            shape: BoxShape.circle,
                          ),
                        )),
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
