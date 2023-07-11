import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';
import 'package:realstate/common/app_widget/buttom_on_image.dart';
import 'package:realstate/common/app_widget/features_home.dart';
import 'package:realstate/feature/home/infrastructure/model/post_model/post_model.dart';

import '../../../../../common/app_widget/RLocationAndRate.dart';
import '../../../../ad_details/presentation/ui/screens/ad_detalis.dart';

class CardHome extends StatelessWidget {
  final PostModel postModel;

  const CardHome({Key? key, required this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(DetailScreen.name, extra: postModel);
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
                  CachedNetworkImage(
                    height: 150.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl: postModel.images.isNotEmpty
                        ? postModel.images[0] ?? 'assets/images/villa.webp'
                        : 'assets/images/villa.webp',
                    errorWidget: (context, url, error) {
                      return Image.asset(
                        "assets/images/villa.webp",
                        height: 150.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                    // placeholder: (context, url) {
                    //   return SvgPicture.asset('assets/svgs/wink_face.svg');
                    // },
                  ),
                  // Image.asset(
                  //   height: 150.h,
                  //   width: double.infinity,
                  //   postModel.images?[0]??'assets/images/villa.webp',
                  //   fit: BoxFit.cover,
                  // ),
                  PositionedDirectional(
                    top: 4,
                    end: -2,
                    child: ButtonOnImage(icon: Icons.bookmark, fun: () {}),
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
                                postModel.category ?? '',
                                style: context.textTheme.titleMedium!.b,
                              ),
                              5.verticalSpace,
                              LocationAndRateRow(location: postModel.area?.name ?? '', rate: '4,8'),
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
                                  text: postModel.types.isNotEmpty?postModel.types[0]?.price.toString() ?? '':'',
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
