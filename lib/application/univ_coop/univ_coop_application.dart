// Package imports:
import 'package:nfc_manager/nfc_manager.dart';

// Project imports:
import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/domain/entity/univ_coop_card/univ_coop_card.dart';
import 'package:kadai_info_flutter/domain/repository/univ_coop/i_univ_coop_repository.dart';

class UnivCoopApplication {
  UnivCoopApplication({
    required IUnivCoopRepository repository,
  }) : _repository = repository;

  final IUnivCoopRepository _repository;

  Future<Result<UnivCoopCard>> getUnivCoopCard(NfcTag tag) async {
    final result = _repository.getUnivCoopCard(tag);
    return result;
  }
}
