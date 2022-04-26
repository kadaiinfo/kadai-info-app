import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

final httpService = Provider((ref) => Client());
