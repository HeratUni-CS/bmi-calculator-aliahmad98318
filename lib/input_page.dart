import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const buttomContainerColor=Color(0xFFEB1555);
const activeCartColor=Color(0xFF111428);
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
                child: Column(children: [],),
              ),
              ReusableWidget(
                color: activeCartColor,
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
                color:activeCartColor,
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
