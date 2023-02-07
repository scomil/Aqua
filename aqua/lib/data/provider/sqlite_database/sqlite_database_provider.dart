import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqflite/sqflite.dart';

final sqliteDatabaseProvider =
    Provider<SqliteDatabaseProvider>((_) => SqliteDatabaseProvider());

class SqliteDatabaseProvider {
  static const _favoritesTableTitle = 'favorites';
  static const _favoritesTableAssetIdColumn = 'assetId';

  SqliteDatabaseProvider();

  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'aqua_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE $_favoritesTableTitle($_favoritesTableAssetIdColumn TEXT PRIMARY KEY)',
        );
      },
      version: 1,
    );
  }

  final PublishSubject<String> _insertAssetSubject = PublishSubject();
  void insertAsset(String id) {
    _insertAssetSubject.add(id);
  }

  late final Stream<AsyncValue<String>> _insertAssetProcessingStream =
      _insertAssetSubject
          .flatMap((id) => Stream.value(id)
              .asyncMap((id) async {
                final db = await database();

                return await db.insert(
                  _favoritesTableTitle,
                  {_favoritesTableAssetIdColumn: id},
                  conflictAlgorithm: ConflictAlgorithm.replace,
                );
              })
              .map((_) => AsyncValue.data(id))
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  final PublishSubject<String> _deleteAssetSubject = PublishSubject();
  void deleteAsset(String id) {
    _deleteAssetSubject.add(id);
  }

  late final Stream<AsyncValue<String>> _deleteAssetProcessingStream =
      _deleteAssetSubject
          .flatMap((id) => Stream.value(id)
              .asyncMap((id) async {
                final db = await database();

                return await db.delete(
                  _favoritesTableTitle,
                  where: '$_favoritesTableAssetIdColumn = ?',
                  whereArgs: [id],
                );
              })
              .map((_) => AsyncValue.data(id))
              .onErrorReturnWith(
                  (error, stackTrace) => AsyncValue.error(error, stackTrace)))
          .shareReplay(maxSize: 1);

  Stream<List<String>> assetsStream() => Rx.merge([
        _insertAssetProcessingStream,
        _deleteAssetProcessingStream,
      ])
          .startWith(const AsyncValue.data(''))
          .switchMap((value) => value.maybeWhen(
                data: (_) => Stream.value(_).asyncMap((event) async {
                  final db = await database();
                  final List<Map<String, dynamic>> maps =
                      await db.query(_favoritesTableTitle);

                  return List.generate(maps.length, (i) {
                    return maps[i][_favoritesTableAssetIdColumn] as String;
                  });
                }).onErrorResumeNext(const Stream.empty()),
                orElse: () => const Stream.empty(),
              ));
}
