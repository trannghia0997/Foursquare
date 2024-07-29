import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/message.dart';

class MessageService with BaseService<Message> {
  @override
  String get resourceName => 'messages';
}
