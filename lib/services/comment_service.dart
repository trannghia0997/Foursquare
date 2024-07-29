import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/comment.dart';

class CommentService with BaseService<Comment> {
  @override
  String get resourceName => 'comments';
}
