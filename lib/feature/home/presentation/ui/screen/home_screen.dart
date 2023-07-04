import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

import '../widget/card_home.dart';
import '../widget/custome_chip.dart';

class HomeScreen extends StatelessWidget {
  static const path = 'home';
  static const name = 'home';
  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: context.colorScheme.background,
                // surfaceTintColor: context.colorScheme.onPrimary,
                toolbarHeight: 90.h,
                pinned: true,
                title: Padding(
                  padding: REdgeInsetsDirectional.only(bottom: 10, top: 20,end: 10,start: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Find Your \nBest Place to Stay',
                          style: context.textTheme.headlineSmall!.xb
                              .copyWith(color: context.colorScheme.primary)),
                      Icon(Icons.notifications_none_outlined,
                          color: context.colorScheme.primary, size: 30.r),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60.h),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Material(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                        child: AppTextField(
                          borderColor: context.colorScheme.background,
                          filled: false,
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey.shade300,
                            ),
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.tune,
                              color: context.colorScheme.primary,
                            ),
                            onPressed: () {},
                          ),
                          hintText: "search...",
                          hintTextStyle: TextStyle(color: Colors.grey.shade300),
                        ),
                      ),
                    )),
              ),
              SliverAppBar(
                backgroundColor: context.colorScheme.background,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Text(
                    'Categories',
                    style: context.textTheme.titleSmall!.xb,
                  ),
                ),
                centerTitle: false,
                titleSpacing: 0,
                pinned: false,
                snap: true,
                floating: true,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(80.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: REdgeInsetsDirectional.only(end: 8.0,start: (index==0)?10:0),
                            child: CustomeChip(text: 'lable$index', image: 'assets/images/house.png'),
                          ),
                          itemCount: 10,
                        ),
                      ),
                      Padding(
                        padding: REdgeInsetsDirectional.only(top: 10, bottom: 7,start: 10,end: 10),
                        child: Text(
                          'Nearby for you',
                          style: context.textTheme.titleSmall!.xb,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, index) => const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10),
                  child: CardHome(),
                ),
                childCount: 10,
              )),
            ],
          )),
    );
  }
}
/*NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('Pinned App Bar'),
                pinned: true,
              ),
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    title: Container(
                      height: 500, // Replace with your content
                      color: Colors.grey[300],
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) => CardHome(),
                          childCount: 10))
                ],
              );
            },
          ),
          floatHeaderSlivers: true,
        )*/
