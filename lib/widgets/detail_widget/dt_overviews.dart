import 'package:flutter/material.dart';

import 'dt_hour_rating.dart';

class DtOverviews extends StatelessWidget {
  final String? hour;
  final String? rating;
  final String? description;
  const DtOverviews({
    Key? key,
    this.hour,
    this.rating,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Row(
          children: [
            DtHourRating(
              iconUrl: 'clock.svg',
              title: 'Duration',
              content: '$hour Hours',
            ),
            const SizedBox(width: 30),
            DtHourRating(
              iconUrl: 'star.svg',
              title: 'Rating',
              content: '$rating out of 5',
            ),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        ShaderMask(
          shaderCallback: (rectangle) => const LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(
            Rect.fromLTRB(
              0,
              0,
              rectangle.width,
              rectangle.height,
            ),
          ),
          blendMode: BlendMode.dstIn,
          child: Text(
            '$description',
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
