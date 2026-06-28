import 'package:flutter/material.dart';

class InsertIcons {
  static IconData fromName(String name) {
    switch (name) {
      case "flight":
        return Icons.flight;

      case "coffee":
        return Icons.coffee;

      case "terrain":
        return Icons.terrain;

      case "menu_book":
        return Icons.menu_book;

      case "self_improvement":
        return Icons.self_improvement;

      case "music_note":
        return Icons.music_note;

      case "favorite":
        return Icons.favorite_border;

      case "photo_camera":
        return Icons.photo_camera_outlined;

      case "movie":
        return Icons.movie_outlined;

      case "directions_bike":
        return Icons.directions_bike;

      case "sports_esports":
        return Icons.sports_esports;

      case "palette":
        return Icons.palette_outlined;

      case "auto_stories":
        return Icons.auto_stories;

      case "pool":
        return Icons.pool;

      case "hiking":
        return Icons.hiking;

      default:
        return Icons.interests;
    }
  }
}
