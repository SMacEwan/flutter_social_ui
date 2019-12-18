import 'package:flutter_social_ui/models/post_model.dart';
import 'package:flutter_social_ui/models/user_model.dart';

// Posts
final _post0 = Post(
  imageUrl: 'assets/images/post0.jpg',
  author: User(),
  title: 'Beware the Woods',
  descript: 'Description',
  likes: 102,
  comments: 37,
);
final _post1 = Post(
  imageUrl: 'assets/images/post1.jpg',
  author: User(),
  title: 'Forest Trouble',
  descript: 'Description',
  likes: 532,
  comments: 129,
);
final _post2 = Post(
  imageUrl: 'assets/images/post2.jpg',
  author: User(),
  title: 'Post 2',
  descript: 'Description',
  likes: 985,
  comments: 213,
);
final _post3 = Post(
  imageUrl: 'assets/images/post3.jpg',
  author: User(),
  title: 'Post 3',
  descript: 'Description',
  likes: 402,
  comments: 25,
);
final _post4 = Post(
  imageUrl: 'assets/images/post4.jpg',
  author: User(),
  title: 'Post 4',
  descript: 'Description',
  likes: 628,
  comments: 74,
);
final _post5 = Post(
  imageUrl: 'assets/images/post5.jpg',
  author: User(),
  title: 'Post 5',
  descript: 'Description',
  likes: 299,
  comments: 28,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];
final users = [
  User(profileImageUrl: 'assets/images/user0.jpg'),
  User(profileImageUrl: 'assets/images/user1.jpg'),
  User(profileImageUrl: 'assets/images/user2.jpg'),
  User(profileImageUrl: 'assets/images/user3.jpg'),
  User(profileImageUrl: 'assets/images/user4.jpg'),
  User(profileImageUrl: 'assets/images/user5.jpg'),
  User(profileImageUrl: 'assets/images/user6.jpg'),
  User(profileImageUrl: 'assets/images/user7.jpg'),
  User(profileImageUrl: 'assets/images/user8.jpg'),
  User(profileImageUrl: 'assets/images/user9.jpg'),
  User(profileImageUrl: 'assets/images/user10.jpg'),
  User(profileImageUrl: 'assets/images/user11.jpg'),
  User(profileImageUrl: 'assets/images/user12.jpg'),
];
final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post0, _post2, _post4];

// Current User
final User currentUser = User(
  profileImageUrl: 'assets/images/user.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);
