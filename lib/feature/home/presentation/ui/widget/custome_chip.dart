import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/network/page_state/page_state.dart';
import 'package:realstate/common/theme/typography.dart';
import 'package:realstate/feature/home/infrastructure/model/category_model/category.dart';

import '../../state/home_bloc.dart';

class CustomeChip extends StatelessWidget {
  const CustomeChip({
    super.key,
    this.categoryModel,
  });

  final CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      // buildWhen: (previous, current) => previous.selectAll != current.selectAll,
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<HomeBloc>().add(SelectCategoryChip(
              isAll: categoryModel == null ? true : false, id: categoryModel == null ? null : categoryModel!.id)),
          child: Chip(
            side: BorderSide.none,
            elevation: 2,
            avatar: CachedNetworkImage(
              height: 25.h,
              width: 25.w,
              imageUrl: categoryModel?.image_url ?? 'assets/images/house.png',
              errorWidget: (context, url, error) {
                return Image.asset(
                  "assets/images/house.png",
                  height: 150.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
              // placeholder: (context, url) {
              //   return SvgPicture.asset('assets/svgs/wink_face.svg');
              // },
            ),
            backgroundColor: categoryModel == null
                ? (state.selectAll ? context.colorScheme.primary : context.colorScheme.outline.withOpacity(.2))
                : ((categoryModel?.isSelected ?? false)
                    ? context.colorScheme.primary
                    : context.colorScheme.outline.withOpacity(.2)),
            label: Text(categoryModel?.name ?? "All",
                style: context.textTheme.bodySmall!.xb.copyWith(
                    color: categoryModel == null
                        ? (state.selectAll ? context.colorScheme.onPrimary : context.colorScheme.primary)
                        : ((categoryModel?.isSelected ?? false)
                            ? context.colorScheme.onPrimary
                            : context.colorScheme.primary))),
          ),
        );
      },
    );
  }
}
