import 'package:flutter/material.dart';

class Apptopnavigations extends StatelessWidget {
  const Apptopnavigations({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "For you",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: 25,
        ),
        Text(
          "Following",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: 25,
        ),
        Text(
          "Favorites",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
