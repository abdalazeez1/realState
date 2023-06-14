import 'package:flutter/material.dart';

import '../widegt.dart';
class LandRealStateType extends StatelessWidget {
  const LandRealStateType({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChoseCityWidget(),
        ChoseSpecificationWidget(),
        EnterDescWidget(),
        SelectPhotoWidegt(),
        Row(
          children: [EnterPriceWidget(), SizedBox(width: 20), ChoseLocationWidget()],
        ),
        EnterSizeWidget(),
        SizedBox(height: 100),
      ],
    );
  }
}
