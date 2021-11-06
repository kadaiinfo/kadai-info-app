import 'package:kadai_info_flutter/core/result/result.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/i_sqflite_datasource.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article.dart';
import 'package:kadai_info_flutter/infrastructure/datasource/sqflite/model/sqf_article_table.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDatasource implements ISqfliteDatasource {
  static const _articleTableName = 'article';

  @override
  Future<Result<SQFArticleTable>> findAllArticles({
    required int limit,
    required int offset,
  }) async {
    final db = await _getArticleDatabase();
    final articleMaps = await db.query(
      _articleTableName,
      offset: offset,
      limit: limit,
      orderBy: SQFArticle.keyCreatedAt,
    );
    final allCount = Sqflite.firstIntValue(
          await db.rawQuery('SELECT count(*) FROM $_articleTableName'),
        ) ??
        0;

    final table = SQFArticleTable(
      articles: articleMaps.map((e) => SQFArticle.fromMap(e)).toList(),
      hasNext: offset + limit < allCount,
      hasPrevious: offset > 0 && offset + limit <= allCount,
    );
    return Result.success(table);
  }

  Future<Database> _getArticleDatabase() async {
    try {
      try {
        final Database db = await openDatabase(
          join(await getDatabasesPath(), _articleTableName),
          version: 1,
          onCreate: (db, version) async {
            await db.execute(
              '''
              CREATE TABLE $_articleTableName (
              ${SQFArticle.keyId} TEXT PRIMARY KEY, 
              ${SQFArticle.keyCreatedAt} INTEGER,
              ${SQFArticle.keyIsFavorite} INTEGER 
              )
              ''',
            );
          },
        );
        return db;
      } catch (e) {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Result<SQFArticle>> deleteArticle(String articleId) async {
    try {
      final db = await _getArticleDatabase();
      await db.delete(
        _articleTableName,
        where: '${SQFArticle.keyId}=?',
        whereArgs: [articleId],
      );
      final article = SQFArticle(
        id: articleId,
        createdAt: DateTime.now(),
        isFavorite: false,
      );
      return Result.success(article);
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }

  @override
  Future<Result<SQFArticle>> saveArticle(String articleId) async {
    try {
      final db = await _getArticleDatabase();
      final article = SQFArticle(
        id: articleId,
        createdAt: DateTime.now(),
        isFavorite: true,
      );
      final data = article.toMap();
      await db.insert(
        _articleTableName,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return Result.success(article);
    } catch (e) {
      return Result.failure(Exception(e));
    }
  }

  @override
  Future<Result<SQFArticle?>> existArticle(String articleId) async {
    final db = await _getArticleDatabase();
    final data = await db.query(_articleTableName,
        where: '${SQFArticle.keyId}=?', whereArgs: [articleId], limit: 1);
    if (data.isEmpty) {
      return const Result.success(null);
    } else {
      final article = SQFArticle.fromMap(data.first);
      return Result.success(article);
    }
  }
}
