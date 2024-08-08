import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String address;
  final String image;

  const CustomCard({
    super.key,
    required this.name,
    required this.address,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Image.network(image),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(address),
          ],
        )
      ]),
    );
  }
}
