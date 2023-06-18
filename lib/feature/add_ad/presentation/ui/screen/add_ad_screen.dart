import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/app_widget/reactive_text_field.dart';
import 'package:realstate/common/constant/constant.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/type_rela_state_widget/appartment.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/type_rela_state_widget/farm.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/type_rela_state_widget/land.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/type_rela_state_widget/market.dart';
import 'package:realstate/feature/add_ad/presentation/ui/widget/type_rela_state_widget/villa.dart';
import 'package:realstate/feature/auth/presentation/ui/widgets/auth_button.dart';
import '../../state/add_ad_bloc.dart';
import '../widget/widegt.dart';
import '../../../../../common/enums/enums.dart';
import 'package:collection/collection.dart';

class AddAdsScreen extends StatefulWidget {
  const AddAdsScreen({Key? key}) : super(key: key);
  static const path = 'addAds';
  static const name = 'addAds';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const AddAdsScreen();
  }

  @override
  State<AddAdsScreen> createState() => _AddAdsScreenState();
}

class _AddAdsScreenState extends State<AddAdsScreen> {
  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    print("rebuild");
    return BlocProvider(
      create: (context) => getIt<AddAdBloc>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(kPage),
              child: AuthButton(text: "Submit", func: () {}),
            ),
            appBar: AppBar(),
            body: ReactiveForm(
              formGroup: context.read<AddAdBloc>().formGroup,
              child: ReactiveValueListenableBuilder(
                  formControlName: FormGroupKey.realStateType,
                  builder: (context, value, child) {
                    return ListView(
                      padding: const EdgeInsets.symmetric(horizontal: kPage),
                      children: [
                        const AddTypeWidget(),
                        const AddTitleWidget(),
                        const RealStateType(),
                        if (getSelectedTypeRealSatte(value.value as String?) == TypeRealState.apartment)
                          const AppartmentRealStateType(),
                        if (getSelectedTypeRealSatte(value.value as String?) == TypeRealState.land)
                          const LandRealStateType(),
                        if (getSelectedTypeRealSatte(value.value as String?) == TypeRealState.villa)
                          const VillaRealStateType(),
                        if (getSelectedTypeRealSatte(value.value as String?) == TypeRealState.market)
                          const MarketRealStateType(),
                        if (getSelectedTypeRealSatte(value.value as String?) == TypeRealState.farm)
                          const FarmRealStateType()

                      ],
                    );
                  }
              ),
            ),
          );
        }
      ),
    );
  }

  TypeRealState? getSelectedTypeRealSatte(String? f) =>
      TypeRealState.values.firstWhereOrNull((element) => f == element.name);
}







