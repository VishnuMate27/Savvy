import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'

class PreLoginPage extends StatelessWidget {
  const PreLoginPage({Key? key}) : super(key: key);

  final FirebaseAuth _firebaseAuth;
  PreLoginPage(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

   Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 232),
            Center(
              child: Image(
                width: 450,
                height: 200,
                image: AssetImage('images/evlogo.png'),
              ),
            ),
            SizedBox(height: 250),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'b');
              },
              child: Container(
                height: 55,
                width: 329,
                // color: LinearGradient(colors: [Color(0x1D976C),Color(0x93F9B9)],
                // begin: Alignment.centerLeft, stops: Alignment.centerRight ),
                // color: GradientColor(colors: [Color(0x1D976C),Color(0x93F9B9)]),
                color: Color(0xFFEA384D),
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
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'c');
              },
              child: Container(
                height: 55,
                width: 329,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color(0xFFEA384D),
                        width: 3,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Color(0xFFEA384D),
                        width: 3,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        color: Color(0xFFEA384D),
                        width: 3,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Color(0xFFEA384D),
                        width: 3,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Center(
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 21,
                        color: Color(0xFFEA384D),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
