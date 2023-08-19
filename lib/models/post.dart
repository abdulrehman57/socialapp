import 'package:ar_social_app/models/user.dart';

class Post {
  Post(
      {this.imageUrl,
      this.postName,
      this.location,
      this.totalLikes,
      this.totalComments,
      this.user});

  String? imageUrl;
  String? postName;
  String? location;
  int? totalLikes;
  int? totalComments;
  User? user;
}
