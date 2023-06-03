import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/constant.dart';

import '../../../common/app_widget/drop_down_menu.dart';
import 'map_screen.dart';

class AddAdsScreen extends StatelessWidget {
  const AddAdsScreen({Key? key}) : super(key: key);
  static const path = 'addAds';
  static const name = 'addAds';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const AddAdsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kPage),
        children: [
          AdSectionWidget(
            title: "Add Type",
            child: Row(
              children: [
                Expanded(
                  child: SegmentedButton(
                      segments: const [
                        ButtonSegment<int>(value: 1, label: Text("label1"), icon: Icon(Icons.circle_outlined)),
                        ButtonSegment<int>(value: 2, label: Text("label2"), icon: Icon(Icons.circle_outlined)),
                      ],
                      selectedIcon: const Icon(Icons.circle_rounded),
                      selected: const {2}),
                ),
              ],
            ),
          ),
          const AdSectionWidget(
            title: "Add Title",
            child: AppTextField(prefixIcon: Icon(Icons.abc), hintText: "Add Title"),
          ),
          AdSectionWidget(
            title: "Real State Type",
            child: AppDropDownMenu<String?>(
              onTap: () {},
              onChange: (text) {
                // selectedPioneerType.value =
                //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
              },
              value: "vela",
              hint: "Type ",
              // validator: (value) => requiredValidator().call(value),
              items: const ["vela", "appartment"],
              onSaved: (text) {},
            ),
          ),
          AdSectionWidget(
            title: "City",
            child: AppDropDownMenu<String?>(
              onTap: () {},
              onChange: (text) {
                // selectedPioneerType.value =
                //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
              },
              value: "Aleppo",
              hint: "City ",
              // validator: (value) => requiredValidator().call(value),
              items: const ["Aleppo", "Idlib"],
              onSaved: (text) {},
            ),
          ),
          AdSectionWidget(
            title: "Direction",
            child: Row(
              children: [
                Expanded(
                  child: SegmentedButton(
                      segments: const [
                        ButtonSegment<int>(value: 1, label: Text("label1"), icon: Icon(Icons.circle_outlined)),
                        ButtonSegment<int>(value: 2, label: Text("label2"), icon: Icon(Icons.circle_outlined)),
                        ButtonSegment<int>(value: 3, label: Text("label3"), icon: Icon(Icons.circle_outlined)),
                        ButtonSegment<int>(value: 4, label: Text("label4"), icon: Icon(Icons.circle_outlined)),
                      ],
                      multiSelectionEnabled: true,
                      selectedIcon: const Icon(Icons.circle_rounded, color: Colors.green),
                      selected: const {1, 2}),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: AdSectionWidget(
                  title: "Rooms",
                  child: AppDropDownMenu<String?>(
                    onTap: () {},
                    onChange: (text) {
                      // selectedPioneerType.value =
                      //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
                    },
                    value: "1",
                    hint: "Rooms",
                    // validator: (value) => requiredValidator().call(value),
                    items: const ["1", "2"],
                    onSaved: (text) {},
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: AdSectionWidget(
                  title: "Floor",
                  child: AppDropDownMenu<String?>(
                    onTap: () {},
                    onChange: (text) {
                      // selectedPioneerType.value =
                      //     ProviderType.values.firstWhereOrNull((element) => element.translation.tr() == text)?.index;
                    },
                    value: "2",
                    hint: "Floors ",
                    // validator: (value) => requiredValidator().call(value),
                    items: const ["2", "4"],
                    onSaved: (text) {},
                  ),
                ),
              )
            ],
          ),
          const AdSectionWidget(
            title: "Descriptions",
            child: AppTextField(
              maxLines: 4,
              prefixIcon: Icon(Icons.description),
              hintText: "Descriptions",
            ),
          ),
          AdSectionWidget(
            title: "Photos",
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
                            width: 100,
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16)),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: AdSectionWidget(
                    title: "Price", child: AppTextField(prefixIcon: Icon(Icons.price_change), hintText: "price")),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: AdSectionWidget(
                  title: "Location",
                  child: GestureDetector(
                    onTap: (){
                      context.pushNamed(MapScreen.name);
                    },
                    child: AppTextField(
                      enabled:  false ,
                      prefixIcon: Icon(Icons.location_city),
                      hintText: "Location",
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

class AdSectionWidget extends StatelessWidget {
  const AdSectionWidget({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(title, style: Theme.of(context).textTheme.titleSmall),
        ),
        child,
      ],
    );
  }
}
