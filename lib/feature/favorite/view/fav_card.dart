import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardFavorite extends StatelessWidget {
  const CardFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 25),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              margin: REdgeInsetsDirectional.only(end: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  'assets/images/villa.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Modern Family House',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                8.verticalSpace,
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                    ),
                    8.horizontalSpace,
                    Text(
                      'Los Angels, USA',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                4.verticalSpace,
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade800,
                      size: 20.r,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '4,8',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                8.verticalSpace,
                Text(
                  'This house is very suitable to ',
                  maxLines: 4,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey,fontSize:10 ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
