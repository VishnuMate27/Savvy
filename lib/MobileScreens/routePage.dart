import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
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
                  height: 100,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Routes & Stops',
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
                Row(
                  children: [
                    Text(
                      'Source',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
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
                      hintText: '       Nagpur',
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      'Stop 1',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 154,
                    ),
                    Text(
                      'Expected Time',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 183,
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
                          hintText: '       Raddison Blu',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 144,
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
                          hintText: '       47 min',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      'Stop 2',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 154,
                    ),
                    Text(
                      'Expected Time',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 183,
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
                          hintText: '       TATA EV Chargers',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 144,
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
                          hintText: '       30 min',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Text(
                      'Destination',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
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
                      hintText: '       Hydrabad',
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      'Expected time of journey',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      width: 75,
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
                          hintText: '     5:32',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
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
                        'Plan my Journey',
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
                  height: 56,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
