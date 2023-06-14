import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/feature/add_ad/view/widget/add_title.dart';
import 'package:realstate/feature/add_ad/view/widget/type_rela_state_widget/appartment.dart';
import 'package:realstate/feature/add_ad/view/widget/type_rela_state_widget/farm.dart';
import 'package:realstate/feature/add_ad/view/widget/type_rela_state_widget/land.dart';
import 'package:realstate/feature/add_ad/view/widget/type_rela_state_widget/market.dart';
import 'package:realstate/feature/add_ad/view/widget/type_rela_state_widget/villa.dart';
import '../../../../common/app_widget/app_text_field.dart';
import '../widget/widegt.dart';
import '../../../../common/enums/enums.dart';

class AddAdsScreen extends StatelessWidget {
  const AddAdsScreen({Key? key}) : super(key: key);
  static const path = 'addAds';
  static const name = 'addAds';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const AddAdsScreen();
  }

  final re = TypeRealState.apartment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kPage),
        children: [
          const AddTypeWidget(),
          const AddTitleWidget(),
          const RealStateType(),
          if (re == TypeRealState.apartment)
            const AppartmentRealStateType(),
          if (re == TypeRealState.land)
            const LandRealStateType(),
          if (re == TypeRealState.villa)
            const VillaRealStateType(),
          if (re == TypeRealState.market)
            const MarketRealStateType(),
          if (re == TypeRealState.farm)
            const FarmRealStateType()
        ],
      ),
    );
  }
}







