import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';
import 'package:realstate/common/app_widget/buttom_on_image.dart';
import 'package:realstate/common/app_widget/features_home.dart';

import '../../../../../common/app_widget/RLocationAndRate.dart';
import '../../../../ad_details/presentation/ui/screens/ad_detalis.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(DetailScreen.name);
      },
      child: Card(
        margin: REdgeInsetsDirectional.only(bottom: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: context.colorScheme.onPrimary,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    height: 150.h,
                    width: double.infinity,
                    'assets/images/villa.webp',
                    fit: BoxFit.cover,
                  ),
                   Positioned(
                    top: 4,
                    right: -2,
                    child: ButtonOnImage(icon: Icons.bookmark,fun: (){}),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Modern Family House",
                                style: context.textTheme.titleMedium!.b,
                              ),
                              5.verticalSpace,
                              const LocationAndRateRow(),
                            ],
                          ),
                          VerticalDivider(color: Colors.grey, width: 10.w, thickness: 1),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(text: 'Price\n', style: context.textTheme.bodyMedium, children: [
                              WidgetSpan(
                                  child: SizedBox(
                                height: 20.h,
                              )),
                              TextSpan(
                                  text: '\$230',
                                  style: context.textTheme.bodyLarge!.xb.copyWith(color: context.colorScheme.primary)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(color: Colors.grey, height: 1, thickness: 1),
                  const Wrap(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FeaturesHome(),
                      FeaturesHome(),
                      FeaturesHome(),
                      FeaturesHome(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
