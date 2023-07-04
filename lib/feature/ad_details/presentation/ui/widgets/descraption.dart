import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';

import '../../../../../common/app_widget/read_more_text.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Descriptions',
          style: context.textTheme.bodyLarge,
          textAlign: TextAlign.start,
        ),
        10.verticalSpace,
        ReadMoreTextView(
          trimLines: 3,
          colorClickableText: context.colorScheme.primary,
          trimMode: TrimMode.Line,
          text:
          'This house is very suitable to be used as a home with family large courtyard and'
              ' added with five rooms and a pool swimming pool to make your family comfortable'
              ' living the house,in the morning and evening',
        ),
        // Text(
        //     'This house is very suitable to be used as a home with family large courtyard and'
        //     ' added with five rooms and a pool swimming pool to make your family comfortable'
        //     ' living the house,in the morning and evening...More',
        //     style: context.textTheme.bodyMedium),
      ],
    );
  }
}
