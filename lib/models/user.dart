import 'package:ar_social_app/models/post.dart';

class User {
  User(
      {this.profileImageUrl,
      this.bgImageUrl,
      this.userName,
      this.userFollowing,
      this.userFollower,
      this.myPosts,
      this.favPosts});
  String? profileImageUrl;
  String? bgImageUrl;
  String? userName;
  int? userFollowing;
  int? userFollower;
  List<Post>? myPosts;
  List<Post>? favPosts;
}
