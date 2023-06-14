import 'package:flutter/material.dart';

import '../../../../common/app_widget/drop_down_menu.dart';
import 'ad_section.dart';
class SelectPhotoWidegt extends StatelessWidget {
  const SelectPhotoWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdSectionWidget(
      title: "Photos",
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(16)),
              child: const Icon(
                Icons.add,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                      width: 100,
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16)),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
