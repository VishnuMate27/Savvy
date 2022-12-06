import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD31027),
      body: Column(
        children: [
          SizedBox(
            height: 234,
          ),
          Ink.image(
            width: 100,
            height: 100,
            image: AssetImage('images/Successmark.png'),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Your Turf has been booked successfully  !',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Mukta',
                fontSize: 25,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        backgroundColor: Color(0xFFFFFFFF),
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.home,
              color: Color(0xFFD31027),
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
