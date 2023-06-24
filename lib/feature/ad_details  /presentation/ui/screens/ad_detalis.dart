import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realstate/feature/ad_details%20%20/presentation/ui/screens/comment.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/borker_card.dart';
import '../widgets/bottun.dart';
import '../widgets/descraption.dart';
import '../widgets/Box_blue.dart';

int activeIndex = 0;
final imageDemo = [
  'assets/images/villa.webp',
  'assets/images/villa1.jpeg',
  'assets/images/villa2.jpeg',
  'assets/images/villa3.jpeg',
];

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
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
                      return bulidImage(imageDDDd, index);
                    },
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 4, 80, 143)
                            .withOpacity(.5),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 4, 80, 143)
                            .withOpacity(.5),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.verticalSpace,
            Center(child: buileIndicator()),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Modern Family House",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text('\$230',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.blue)),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  'Los Angels, USA',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.grey, fontSize: 10),
                ),
                const SizedBox(width: 17),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade800,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '4,8',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.grey, fontSize: 10),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        // useSafeArea: true,
                        // isScrollControlled: true,
                        context: context,
                        builder: (ctx) => const Comment());
                  },
                  icon: SvgPicture.asset('assets/images/Group.svg'),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoxBlue(
                  iconData: Icons.wifi,
                  name: 'wifi',
                ),
                BoxBlue(
                  iconData: Icons.local_parking_sharp,
                  name: '3',
                ),
                BoxBlue(
                  iconData: Icons.bathtub_outlined,
                  name: '5',
                ),
              ],
            ),
            10.verticalSpace,
            const Description(),
            20.verticalSpace,
            const BrokerCard(),
            30.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottunPP(
                  iconData: Icons.mail,
                  nameButton: 'Messages',
                ),
                SizedBox(
                  width: 25,
                ),
                BottunPP(
                    nameButton: 'Location',
                    iconData: Icons.location_on_outlined)
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget bulidImage(String image, int index) {
  return Container(
    width: double.infinity,
    color: Colors.grey,
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
