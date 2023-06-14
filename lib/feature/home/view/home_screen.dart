import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/feature/home/view/custome_chip.dart';

import 'card_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              surfaceTintColor: Colors.white,
              toolbarHeight: 90.h,
              pinned: true,
              title: Padding(
                padding: REdgeInsetsDirectional.only(bottom: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Find Your \nBest Place to Stay',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold, color: Color(0xff3C77C0))),
                    Icon(Icons.notifications_none_outlined, color: Color(0xff3C77C0), size: 30.r),
                  ],
                ),
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(60.h),
                  child: Material(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                    child: AppTextField(
                      borderColor: Colors.white,
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
                          color: Color(0xff3C77C0),
                        ),
                        onPressed: () {},
                      ),
                      hintText: "search...",
                      hintTextStyle: TextStyle(color: Colors.grey.shade300),
                    ),
                  )),
            ),
            SliverAppBar(
              surfaceTintColor: Colors.white,
              shadowColor: Colors.white,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Categories',
                  style:
                      Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
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
                          padding:  REdgeInsetsDirectional.only(end: 8.0),
                          child: CustomeChip(text: 'lable$index', image: 'assets/images/house.png'),
                        ),
                        itemCount: 10,
                      ),
                    ),
                    Padding(
                      padding: REdgeInsetsDirectional.only(top: 10, bottom: 7),
                      child: Text(
                        'Nearby for you',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => CardHome(),
              childCount: 10,
            )),
          ],
        ),
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
