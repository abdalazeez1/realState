import 'package:flutter/material.dart';

import '../widegt.dart';
class MarketRealStateType extends StatelessWidget {
  const MarketRealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChoseCityWidget(),
        Row(
          children: [EnterSizeWidget(), SizedBox(width: 20), ChoseFloorWidget()],
        ),
        ChoseStoreHouseWidget(),
        EnterDescWidget(),
        SelectPhotoWidegt(),
        Row(
          children: [EnterPriceWidget(), SizedBox(width: 20), ChoseLocationWidget()],
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
