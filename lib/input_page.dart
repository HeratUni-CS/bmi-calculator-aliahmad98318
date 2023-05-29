import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const buttomContainerColor = Color(0xFFEB1555);
const activeCartColor = Color(0xFF111428);

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              ReusableWidget(
                color: activeCartColor,
                child: IconContent(
                  icanData: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
              ),
              ReusableWidget(
                color: activeCartColor,
                child: IconContent(icanData: FontAwesomeIcons.venus,label: 'FEMALE',),
              ),
            ],
          )),
          ReusableWidget(
            color: activeCartColor,
          ),
          Expanded(
              child: Row(
            children: [
              ReusableWidget(
                color: activeCartColor,
              ),
              ReusableWidget(
                color: activeCartColor,
              ),
            ],
          )),
          Container(
            height: 80,
            color: buttomContainerColor,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icanData;
  final String label;
  IconContent({required this.icanData, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icanData,
          size: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFF868892),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.child});
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
