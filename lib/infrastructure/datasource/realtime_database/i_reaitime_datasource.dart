// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/model/realtime_database_binanbijo_vote.dart';

abstract class IRealtimeDatabaseDatasource {
  Future<void> pushVote(RealtimeDatabaseBinanbijoVote vote);
}
