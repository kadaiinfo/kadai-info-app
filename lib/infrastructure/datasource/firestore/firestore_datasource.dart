import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/i_firestore_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/model/firestore_binanbijo_vote.dart';

class FireStoreDatasource implements IFirestoreDatasource {
  FireStoreDatasource() {
    _firestore = FirebaseFirestore.instance;
  }

  late FirebaseFirestore _firestore;

  // 投票
  @override
  Future<void> pushVote(FirestoreBinanbijoVote vote) async {
    try {
      await _firestore.collection('binanbijo_vote').add(vote.toMap());
    } catch (e) {
      rethrow;
    }
  }
}
