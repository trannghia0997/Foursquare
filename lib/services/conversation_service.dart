import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/conversation.dart';

class ConversationService with BaseService<Conversation> {
  @override
  String get resourceName => 'conversations';
}
