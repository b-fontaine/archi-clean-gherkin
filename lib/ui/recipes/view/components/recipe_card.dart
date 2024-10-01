import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const RecipeCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: FadeInImage.memoryNetwork(
            image: image,
            placeholder: kTransparentImage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleLarge,
        ),
        Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
          style: textTheme.titleSmall,
        ),
      ],
    );
  }
}
