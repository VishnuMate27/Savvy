import 'dart:math';
import 'package:savvy/MobileScreens/preLoginPage.dart';
import 'package:provider/provider.dart'
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 32, top: 47),
            child: Row(
              children: [
                Icon(FeatherIcons.map),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'New Delhi',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 16,
                    color: Color(0xFF585858),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(FeatherIcons.chevronDown),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            child: CupertinoSearchTextField(
              placeholder: 'Search for turfs...',
              placeholderStyle: TextStyle(
                fontFamily: 'Mukta',
                fontSize: 15,
                color: Color(0xFF585858),
                fontWeight: FontWeight.w500,
              ),
              borderRadius: BorderRadius.circular(3),
              padding: EdgeInsets.fromLTRB(6, 16, 6, 16),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 32),
            child: Scrollbar(
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFFEA384D),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          'images/cib_apple.png',
                        ),
                      ),
                    ),
                    // child: Container(
                    //   width: 1,
                    //   height: 1,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage('images/cib_apple.png'),
                    //     ),
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(24),
            child: Card(
              elevation: 1,
              color: Color(0xFF656565),
              child: const SizedBox(
                height: 160,
                child: Center(
                  child: Text('Filled Card'),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, top: 24),
                child: Text(
                  'Checkout Best Turfs Near You',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 18,
                    color: Color(0xFFEA384D),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          Container(
            width: 369,
            height: 247,
            margin: EdgeInsets.only(left: 32, right: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Nex Arena',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 21,
                          color: Color(0xFF585858),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Dummy Road, New Delhi',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 15,
                          color: Color(0xFF1D976C),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 99,
                    ),
                    Icon(
                      FeatherIcons.navigation,
                      color: Color(0xFF585858),
                      size: 16,
                    ),
                    Text(
                      '  0.5 Km',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 15,
                          color: Color(0xFF585858),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 1,
                    color: Color(0xFF656565),
                    child: const SizedBox(
                      height: 160,
                      child: Center(
                        child: Text('Filled Card 2'),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 317,
                  height: 16,
                  margin: EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('images/cib_apple.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Image(
                        image: AssetImage('images/cib_apple.png'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Image(
                        image: AssetImage('images/cib_apple.png'),
                      ),
                      SizedBox(
                        width: 185,
                      ),
                      Image(
                        image: AssetImage('images/star_on.png'),
                      ),
                      Image(
                        image: AssetImage('images/star_on.png'),
                      ),
                      Image(
                        image: AssetImage('images/star_on.png'),
                      ),
                      Image(
                        image: AssetImage('images/star_on.png'),
                      ),
                      Image(
                        image: AssetImage('images/star_off.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        backgroundColor: Color(0xFFFFFFFF),
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: RotationTransition(
              turns: AlwaysStoppedAnimation(360 / 360),
              child: SvgPicture.asset(
                'icons/home.svg',
                color: Color(0xFF1D976C),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/turf.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'icons/notification.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              foregroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1517466787929-bc90951d0974?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
