import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colorScheme.background, borderRadius: BorderRadius.vertical(top: Radius.circular(35.r))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              20.verticalSpace,
              Text(
                'comment ',
                style: context.textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              10.verticalSpace,
              SizedBox(
                height: 10.h,
                width: double.infinity,
                child: Divider(
                  color: context.colorScheme.onBackground,
                ),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: REdgeInsets.symmetric(vertical: 10, horizontal: 6),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/monier.jpg'),
                  ),
                  10.horizontalSpace,
                  Container(
                    // width: 140,
                    // height: 60,
                    width: ScreenUtil().screenWidth * .35,
                    // margin: REdgeInsets.symmetric(vertical: 5),
                    padding: REdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: context.colorScheme.outline.withOpacity(.25),
                    ),
                    child: Padding(
                      padding: REdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mounir Anas',
                            style: context.textTheme.bodyMedium!.b,
                          ),
                          Text('Perfctoo ', style: context.textTheme.bodyMedium)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Padding(
            padding: REdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              color: context.colorScheme.primary,
              child: Padding(
                padding: REdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _commentController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: context.colorScheme.background,
                          hintText: 'Add comment ... ',
                          hintStyle: context.textTheme.titleSmall!.copyWith(color: context.colorScheme.outline),
                          contentPadding: REdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0.r)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: context.colorScheme.background, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0.r)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: context.colorScheme.background, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0.r)),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    14.horizontalSpace,
                    Container(
                      width: 38.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/images/send.svg',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
