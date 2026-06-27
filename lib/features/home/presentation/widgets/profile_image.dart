import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String image;

  const ProfileImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,

      placeholder: (_, _) => Container(
        color: Colors.grey.shade300,
        child: const Center(child: CircularProgressIndicator()),
      ),

      errorWidget: (_, _, _) =>
          Container(color: Colors.grey.shade300, child: const Icon(Icons.person, size: 80)),
    );
  }
}
