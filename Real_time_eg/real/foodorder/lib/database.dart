// database_helper.dart

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void saveOrderToDatabase(String name, String address) async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'orders_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE orders(id INTEGER PRIMARY KEY, name TEXT, address TEXT)',
      );
    },
    version: 1,
  );

  final Database db = await database;

  await db.insert(
    'orders',
    {'name': name, 'address': address},
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}