import 'package:ar_social_app/models/post.dart';
import 'package:ar_social_app/models/user.dart';

//Post Data
final post0 = Post(
  imageUrl: 'images/post0.jpg',
  postName: 'Post 0',
  location: 'Canada',
  totalLikes: 200,
  totalComments: 30,
  user: User(),
);
final post1 = Post(
  imageUrl: 'images/post1.jpg',
  postName: 'Post 1',
  location: 'Pakistan',
  totalLikes: 500,
  totalComments: 50,
  user: User(),
);
final post2 = Post(
  imageUrl: 'images/post2.jpg',
  postName: 'Post 2',
  location: 'Portugal',
  totalLikes: 100,
  totalComments: 20,
  user: User(),
);
final post3 = Post(
  imageUrl: 'images/post3.jpg',
  postName: 'Post 3',
  location: 'Estonia',
  totalLikes: 50,
  totalComments: 10,
  user: User(),
);
final post4 = Post(
  imageUrl: 'images/post4.jpg',
  postName: 'Post 4',
  location: 'Germany',
  totalLikes: 300,
  totalComments: 100,
  user: User(),
);
final post5 = Post(
  imageUrl: 'images/post5.jpg',
  postName: 'Post 5',
  location: 'Italy',
  totalLikes: 150,
  totalComments: 80,
  user: User(),
);

//User data
final user0 = User(profileImageUrl: 'images/user0.jpg');
final user1 = User(profileImageUrl: 'images/user1.jpg');
final user2 = User(profileImageUrl: 'images/user2.jpg');
final user3 = User(profileImageUrl: 'images/user3.jpg');
final user4 = User(profileImageUrl: 'images/user4.jpg');
final user5 = User(profileImageUrl: 'images/user5.jpg');
final user6 = User(profileImageUrl: 'images/user6.jpg');

//User List Data
final userList = [user0, user1, user2, user3, user4, user5, user6];

//User List Data
final posts = [post0, post1, post2, post3, post4, post5];

// Current User Post List Data
final postList = [post0, post3, post5];
final favPostList = [post1, post2, post4];

//Current user data
final currentUser = User(
    profileImageUrl: 'images/user.jpg',
    bgImageUrl: 'images/user_background.jpg',
    userName: 'Aadia',
    userFollowing: 200,
    userFollower: 450,
    myPosts: postList,
    favPosts: favPostList);
