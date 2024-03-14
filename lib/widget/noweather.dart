import 'package:flutter/material.dart';

class Nowweatherbody extends StatelessWidget {
  const Nowweatherbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There is no weather',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Searching now',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
