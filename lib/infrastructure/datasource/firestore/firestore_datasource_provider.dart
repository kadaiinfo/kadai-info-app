import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/firestore_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/firestore/i_firestore_datasource.dart';

final firestoreDatasourceProvider =
    Provider<IFirestoreDatasource>((ref) => FireStoreDatasource());
