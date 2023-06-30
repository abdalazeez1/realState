import 'package:flutter/material.dart';

class BottunPP extends StatelessWidget {
  const BottunPP({super.key, required this.nameButton, required this.iconData});
  final String nameButton;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                iconData,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                nameButton,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),
    );
  }
}
