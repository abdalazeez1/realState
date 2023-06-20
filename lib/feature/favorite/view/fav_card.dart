import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: REdgeInsetsDirectional.only(end: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  width: 120.r,
                  height: 120.r,
                  'assets/images/villa.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Modern Family House',
                    style: context.textTheme.titleMedium!.xb,
                  ),
                  // 5.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: context.colorScheme.outline,
                        size: 17.r,
                      ),
                      8.horizontalSpace,
                      Text(
                        'Los Angels, USA',
                        style: context.textTheme.bodySmall!.copyWith(color: context.colorScheme.outline),
                      ),
                    ],
                  ),
                  3.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                        size: 17.r,
                      ),
                      6.horizontalSpace,
                      Text(
                        '4,8',
                        style: context.textTheme.bodySmall!.copyWith(color: context.colorScheme.outline),
                      ),
                    ],
                  ),
                  // 5.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'This house is very suitable to be used as a home with family large courtyard and added with five rooms and... More',
                      maxLines: 4,
                      style: context
                          .textTheme
                          .bodySmall!.l.copyWith(color: context.colorScheme.outline),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
