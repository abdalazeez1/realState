import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

import '../widget/fav_card.dart';

class FavoriteScreen extends StatelessWidget {

  static const path = 'favorite';
  static const name = 'favorite';
  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const FavoriteScreen();
  }
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: context
              .textTheme
              .headlineSmall!.b
              .copyWith(color:context.colorScheme.onPrimary ),
        ),
        centerTitle: true,
        toolbarHeight: 70.h,
        backgroundColor: context.colorScheme.primary,
        leading: Icon(
          Icons.arrow_back_ios,
          color: context.colorScheme.onPrimary,
          size: 20.r,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.tune,
              color: context.colorScheme.onPrimary,
              size: 20.r,
            ),
          )
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding:REdgeInsetsDirectional.only(end: 10,start: 10,top: index==0?10:0,bottom:index==9?10:0 ),
        child: CardFavorite(),
      ),itemCount: 10),
    );
  }
}
