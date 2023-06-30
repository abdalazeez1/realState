import 'package:flutter/material.dart';

class BrokerCard extends StatelessWidget {
  const BrokerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.only(left: 2),
      width: MediaQuery.of(context).size.width * .5,
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/monier.jpg'),
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                'Mounir Anas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Owner/Agent')
            ],
          )
        ],
      ),
    );
  }
}
