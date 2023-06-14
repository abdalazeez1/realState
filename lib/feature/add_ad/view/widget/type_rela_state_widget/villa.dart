import 'package:flutter/material.dart';

import '../widegt.dart';
class VillaRealStateType extends StatelessWidget {
  const VillaRealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChoseCityWidget(),
        Row(
          children: [ChoseRoomWidget(), SizedBox(width: 20), ChoseFloorWidget()],
        ),
        Row(
          children: [ChoseSwimmingPoolsWidget(), SizedBox(width: 20), ChoseGardensWidget()],
        ),
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
