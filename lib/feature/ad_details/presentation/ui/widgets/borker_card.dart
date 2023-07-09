import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/theme/typography.dart';

class BrokerCard extends StatelessWidget {
  final String imageUser;
  final String userName;
  const BrokerCard({super.key, required this.imageUser, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer, borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: REdgeInsetsDirectional.only(start: 2),
      width: MediaQuery.of(context).size.width * .5,
      child:  Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imageUser),
          ),
          10.horizontalSpace,
          Column(
            children: [
              Text(
                userName,
                style: context.textTheme.bodyMedium!.xb,
              ),
              Text('Owner/Agent',style: context.textTheme.bodySmall,)
            ],
          )
        ],
      ),
    );
  }
}
