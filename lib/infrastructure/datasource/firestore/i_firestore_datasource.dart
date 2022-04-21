// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/model/firestore_binanbijo_vote.dart';

abstract class IFirestoreDatasource {
  // pushVote
  Future<void> pushVote(FirestoreBinanbijoVote vote);
}
