import 'package:flutter/material.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          width: 70,
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  width: 150,
                  height: double.infinity,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade100,
                  ),
                  width: 150,
                  height: (300 / 2) - 15,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade100,
                  ),
                  width: 150,
                  height: (300 / 2) - 15,
                )
              ])
            ],
          ),
        ));
  }
}
