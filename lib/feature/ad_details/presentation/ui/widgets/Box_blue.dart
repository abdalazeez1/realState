import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoxBlue extends StatelessWidget {
  const BoxBlue({super.key, required this.name, required this.iconData});

  final String name;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: REdgeInsetsDirectional.only(top: 12, bottom: 12, end: 20),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconData,
                color: Colors.white,
                size: 25,
              ),
              Text(
                name,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
