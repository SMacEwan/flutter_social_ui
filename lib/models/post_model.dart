import 'package:flutter_social_ui/models/user_model.dart';

class Post {
  final String imageUrl;
  final User author;
  final String title;
  final String descript;
  final int likes;
  final int comments;

  Post({
    this.imageUrl,
    this.author,
    this.title,
    this.descript,
    this.likes,
    this.comments,
  });
}
