import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'fav_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 70.h,
        backgroundColor: CupertinoColors.systemBlue,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20.r,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(
              Icons.tune,
              color: Colors.white,
              size: 20.r,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
        child: ListView.builder(itemBuilder: (context, index) => const CardFavorite(),itemCount: 10),
      ),
    );
  }
}
