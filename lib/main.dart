import 'package:flutter/material.dart';
import 'package:flutter_application_tutorial/models/person.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) {
            final person = personData[index];
            return CustomCard(
              name: person.name,
              address: person.address,
              image: person.image,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 5,
            );
          },
          itemCount: personData.length,
        ),
      ),
    );
  }
}

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
            Text(name),
            Text(address),
          ],
        )
      ]),
    );
  }
}
