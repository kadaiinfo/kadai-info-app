// Package imports:
import 'package:firebase_database/firebase_database.dart';

// Project imports:
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/i_reaitime_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/realtime_database/model/realtime_database_binanbijo_vote.dart';

class RealtimeDatabaseDatasource implements IRealtimeDatabaseDatasource {
  RealtimeDatabaseDatasource() {
    _db = FirebaseDatabase(
        databaseURL:
            'https://kadai-info-flutter-default-rtdb.asia-southeast1.firebasedatabase.app');
  }

  late FirebaseDatabase _db;

  @override
  Future<void> pushVote(RealtimeDatabaseBinanbijoVote vote) async {
    try {
      final _ref = _db.reference().child('binanbijo_vote').push();
      await _ref.set(vote.toMap());
      return;
    } catch (e) {
      rethrow;
    }
  }
}
