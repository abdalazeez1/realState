import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

class BottunPP extends StatelessWidget {
  const BottunPP({super.key, required this.nameButton, required this.iconData});

  final String nameButton;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          textStyle: context.textTheme.bodyMedium!.b, fixedSize: Size.fromWidth(ScreenUtil().screenWidth * .4)),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          10.horizontalSpace,
          Text(
            nameButton,
          ),
        ],
      ),
    );
    // return Container(
    //   width: 150.w,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: Colors.blue,
    //   ),
    //   child: TextButton(
    //       onPressed: () {},
    //       child: Row(
    //         children: [
    //           Icon(
    //             iconData,
    //             color: Colors.white,
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           Text(
    //             nameButton,
    //             style: TextStyle(color: Colors.white),
    //           ),
    //         ],
    //       )),
    // );
  }
}
