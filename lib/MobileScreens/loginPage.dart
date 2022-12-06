import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:savvy/MobileScreens/preLoginPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  height: 201,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Login',
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
                  height: 56,
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
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '       Enter your email/mobile no.',
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
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '       Enter your password',
                      suffixIcon: Icon(CupertinoIcons.eye_solid),
                      //(CupertinoIcons.eye_solid)
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Color(0xFFEA384D),
                          fontFamily: 'Mukta',
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
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
                        'Login',
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
                SizedBox(
                  height: 56,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Don’t have an account ?',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register Now',
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
                )
               RaisedButton(
               onPressed: () {
               context.read<PreLoginPage>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
            },
            child: Text("Sign in"),
          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
