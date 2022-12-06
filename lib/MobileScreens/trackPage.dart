import 'package:flutter/material.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({Key? key}) : super(key: key);

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    bool isChecked = true;

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
                        'Plan your Journey',
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
                      'Source of your Journey',
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

                      //(CupertinoIcons.eye_solid)
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Text(
                      'No of Stops',
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
                      hintText: '       2',

                      //(CupertinoIcons.eye_solid)
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Text(
                      'Optimize my journey',
                      style: TextStyle(
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 150,
                    ),
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
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'm');
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
