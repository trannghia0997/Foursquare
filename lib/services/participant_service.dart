import 'package:foursquare/services/base_service.dart';
import 'package:foursquare/shared/models/participant.dart';

class ParticipantService with BaseService<Participant> {
  @override
  String get resourceName => 'participants';
}
