import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Descriptions',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
            'This house is very suitable to be used as a home with family large courtyard and added with five rooms and a pool swimming pool to make your family comfortable living in the house,in the morning and evening...More')
      ],
    );
  }
}
