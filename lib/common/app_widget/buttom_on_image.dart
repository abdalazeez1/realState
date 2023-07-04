import 'package:flutter/material.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';

class ButtonOnImage extends StatelessWidget {
  final IconData icon;
  final Function fun;
  const ButtonOnImage({
    super.key, required this.icon, required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsetsDirectional.zero,
        backgroundColor: context.colorScheme.onPrimary.withOpacity(.5),
        shadowColor: context.colorScheme.onPrimary,
        shape: CircleBorder(),
      ),
      onPressed: ()=>fun.call(),
      child: Icon(icon, color: context.colorScheme.primary),
    );
  }
}
