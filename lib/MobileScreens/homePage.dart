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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/evlogo.png'))),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Past Journeys'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Upcoming Journeys'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('My Profile'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About us'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: ,
              margin: EdgeInsets.only(left: 32, top: 47),
              child: Row(
                children: [
                  Icon(FeatherIcons.map),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Nagpur',
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
                  SizedBox(
                    width: 160,
                  ),
                  Icon(Icons.notifications),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Card(
                elevation: 1,
                color: Color(0xFF656565),
                child: const SizedBox(
                  height: 160,
                  child: Center(
                    child: Text('Advertisement'),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25, top: 24),
                  child: Text(
                    'Previous Journeys',
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to HYD',
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
                          'Most Comfortable',
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
                          '500.2 Km',
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
                          Text(
                            '6.2 hours     2 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 135,
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
              ),
            ),
            SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to Pune',
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
                          'Possible',
                          style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 15,
                              color: Color(0xFF1D976C),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        Icon(
                          FeatherIcons.navigation,
                          color: Color(0xFF585858),
                          size: 16,
                        ),
                        Text(
                          '717.1 Km',
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
                          Text(
                            '15.5 hours     3 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 115,
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
              ),
            ),
            SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to Bengaluru',
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
                          'Comfortable',
                          style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 15,
                              color: Color(0xFF1D976C),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        Icon(
                          FeatherIcons.navigation,
                          color: Color(0xFF585858),
                          size: 16,
                        ),
                        Text(
                          '1092.2 Km',
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
                          Text(
                            '32 hours     6 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 135,
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
              ),
            ),
            SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to Mumbai',
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
                          'Possible',
                          style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 15,
                              color: Color(0xFF1D976C),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        Icon(
                          FeatherIcons.navigation,
                          color: Color(0xFF585858),
                          size: 16,
                        ),
                        Text(
                          '827.6 Km',
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
                          Text(
                            '20.4 hours      7 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 115,
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
              ),
            ),
            SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to Nashik',
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
                          'Comfortable',
                          style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 15,
                              color: Color(0xFF1D976C),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 175,
                        ),
                        Icon(
                          FeatherIcons.navigation,
                          color: Color(0xFF585858),
                          size: 16,
                        ),
                        Text(
                          '661.8 Km',
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
                          Text(
                            '16.55 hours     5 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 115,
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
              ),
            ),
            SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'h');
              },
              child: Container(
                width: 369,
                height: 247,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NGP to HYD',
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
                          'Most Comfortable',
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
                          '500.2 Km',
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
                          Text(
                            '6.2 hours     2 Stops',
                            style: TextStyle(
                                fontFamily: 'Mukta',
                                fontSize: 15,
                                color: Color(0xFF585858),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 135,
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
              ),
            )
          ],
        ),
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
                color: Color(0xFFEA384D),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.car_detailed,
              color: Colors.black,
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
