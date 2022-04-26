// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum PageOrdinal { first, second, third, fourth }

final pageOrdinalProvider =
    StateProvider<PageOrdinal>((ref) => PageOrdinal.first);
