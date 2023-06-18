import 'package:flutter/material.dart';

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
