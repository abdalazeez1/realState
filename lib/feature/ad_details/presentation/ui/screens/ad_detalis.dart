import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';
import 'package:realstate/feature/ad_details/presentation/ui/screens/comment.dart';
import 'package:realstate/feature/home/infrastructure/model/post_model/post_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../common/app_widget/RLocationAndRate.dart';
import '../../../../../common/app_widget/buttom_on_image.dart';
import '../../../../../common/app_widget/features_home.dart';
import '../widgets/borker_card.dart';
import '../widgets/bottun.dart';
import '../widgets/descraption.dart';

int activeIndex = 0;
final imageDemo = [
  'assets/images/villa.webp',
  'assets/images/villa1.jpeg',
  'assets/images/villa2.jpeg',
  'assets/images/villa3.jpeg',
];

class DetailScreen extends StatefulWidget {

  static const path = 'detail';
  static const name = 'detail';
  final PostModel postModel;
  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return DetailScreen(postModel: state.extra as PostModel,);
  }
  const DetailScreen({super.key, required this.postModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.only(top: 60, left: 10, right: 10),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: imageDemo.length,
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      height: 240,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        return setState(
                          () => activeIndex = index,
                        );
                      },
                    ),
                    itemBuilder: (contxt, index, realIndex) {
                      final imageDDDd = imageDemo[index];
                      return bulidImage(imageDDDd, index, context);
                    },
                  ),
                  PositionedDirectional(
                    top: 4,
                    start: -2,
                    child: ButtonOnImage(
                        icon: CupertinoIcons.back,
                        fun: () {
                          Navigator.pop(context);
                        }),
                  ),
                  PositionedDirectional(
                    top: 4,
                    end: -2,
                    child: ButtonOnImage(icon: Icons.bookmark, fun: () {}),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Center(child: buileIndicator()),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.postModel.category??'',
                  style: context.textTheme.titleLarge!.b,
                ),
                Text((widget.postModel.types?.isNotEmpty??false)?widget.postModel.types![0].price.toString():'', style: context.textTheme.bodyLarge!.xb.copyWith(color: context.colorScheme.primary)),
              ],
            ),
            Row(
              children: [
                LocationAndRateRow(location: widget.postModel.area?.name??'',rate: '4,8'),
                5.horizontalSpace,
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(35.r))),
                        constraints: BoxConstraints(maxHeight: 550.h, minHeight: 200.h),
                        isScrollControlled: true,
                        context: context,
                        builder: (ctx) => const Comment());
                  },
                  icon: SvgPicture.asset('assets/images/Group.svg'),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  FeaturesHome(),
                  FeaturesHome(),
                  FeaturesHome(),
                ],
              ),
            ),
            // 10.verticalSpace,
            Description(description: widget.postModel.description??''),
            10.verticalSpace,
            const BrokerCard(imageUser: 'assets/images/monier.jpg',userName: 'Mounir Anas'),
            25.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BottunPP(
                  iconData: Icons.mail,
                  nameButton: 'Messages',
                ),
                10.horizontalSpace,
                const BottunPP(nameButton: 'Location', iconData: Icons.location_on_outlined)
              ],
            )
          ],
        )),
      ),
    );
  }
}

Widget bulidImage(String image, int index, BuildContext context) {
  return Container(
    width: double.infinity,
    color: context.colorScheme.outline.withOpacity(0.2),
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );
}

Widget buileIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageDemo.length,
      effect: const ExpandingDotsEffect(
        activeDotColor: Color.fromARGB(255, 65, 147, 241),
        dotHeight: 8,
        dotColor: Colors.grey,
        dotWidth: 8,
      ),
    );
