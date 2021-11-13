import 'package:kadai_info_flutter/infrastructure/datasource/micro_cms/model/mc_picture.dart';

class McBinanbijoPost {
  final String id;
  final String name;
  final int entryNumber;
  final McPicture picture;
  final String description;
  final bool canVoted;

  McBinanbijoPost.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        entryNumber = map['entryNumber'],
        picture = McPicture.fromMap(map['picture']),
        description = map['description'],
        canVoted = map['canVoted'];
}
