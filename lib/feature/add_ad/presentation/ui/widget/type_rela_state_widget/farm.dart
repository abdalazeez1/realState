import 'package:flutter/material.dart';

import '../widegt.dart';
class FarmRealStateType extends StatelessWidget {
  const FarmRealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChoseCityWidget(),
        Row(
          children: [ChoseRoomWidget(), SizedBox(width: 20), ChosePlaygroundWidget()],
        ),
        Row(
          children: [ChoseSwimmingPoolsWidget(), SizedBox(width: 20), ChoseSectionWidget()],
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
