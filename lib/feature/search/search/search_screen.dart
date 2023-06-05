import 'package:flutter/material.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        title: const Text("SearchScreen"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16))),
        bottom: const PreferredSize(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPage, vertical: 10),
              child: AppTextField(
                hintText: "Search",
              ),
            ),
            preferredSize: Size(double.infinity, 70)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPage),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Recent",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Theme.of(context).colorScheme.primary, fontSize: 24)),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Theme.of(context).colorScheme.outlineVariant)),
                        child: Text("ee")),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
