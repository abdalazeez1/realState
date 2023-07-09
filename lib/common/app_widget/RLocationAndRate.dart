import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationAndRateRow extends StatelessWidget {
  final String location;
  final String rate;
  const LocationAndRateRow({super.key, required this.location, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey,
          size: 20.r,
        ),
        Text(
          location,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp),
        ),
        17.horizontalSpace,
        Icon(
          Icons.star,
          color: Colors.yellow.shade800,
          size: 20.r,
        ),
        6.horizontalSpace,
        Text(
          rate,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp),
        )
      ],
    );
  }
}
