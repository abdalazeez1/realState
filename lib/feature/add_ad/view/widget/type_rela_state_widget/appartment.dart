import 'package:flutter/material.dart';

import '../widegt.dart';

class AppartmentRealStateType extends StatelessWidget {
  const AppartmentRealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChoseCityWidget(),
        ChoseDirectionWidget(),
        Row(
          children: [ChoseRoomWidget(), SizedBox(width: 20), ChoseFloorWidget()],
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
