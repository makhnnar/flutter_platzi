import 'package:flutter/material.dart';

import 'titled_stars.dart';

class DescriptionPlace extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TitledStars(
      title: "My titulo",
      starCount: 2,
    );
  }

}
