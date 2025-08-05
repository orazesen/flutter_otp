// import 'package:flutter/material.dart';
// import 'package:flutter_otp/src/data/models/message/message_model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart' as path;

// class LocalDatabase {
//   LocalDatabase() {
//     open();
//   }

//   Database? database;

//   final String databaseName = 'messages.db';

//   final String tableMessage = 'message';

//   final String columnId = 'id';
//   final String columnNumber = 'number';
//   final String columnType = 'type';
//   final String columnMessage = 'message';
//   final String columnReceivedAt = 'timestamp';
//   final String columnSentAt = 'sent_at';
//   final String columnInformedAt = 'informed_at';
//   final String columnFailedAt = 'failed_at';
//   final String columnNumberOfTries = 'number_of_tries';

//   Future open() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     String pathToDb = path.join(await getDatabasesPath(), databaseName);

//     bool isExist = await databaseFactory.databaseExists(pathToDb);
//     if (isExist) {
//       database = await openDatabase(pathToDb, version: 1);
//     } else {
//       database = await openDatabase(
//         pathToDb,
//         version: 1,
//         onCreate: (Database db, int version) async {
//           await db.execute('''
// create table $tableMessage (
//   $columnId integer primary key autoincrement,
//   $columnNumber text not null,
//   $columnType integer not null,
//   $columnMessage text not null,
//   $columnReceivedAt text not null,
//   $columnSentAt text,
//   $columnInformedAt text,
//   $columnFailedAt text,
//   $columnNumberOfTries integer)
// ''');
//         },
//       );
//     }
//   }

//   Future<MessageModel> insert(MessageModel message) async {
//     try {
//       MessageModel? m = await getMessage(message.queueId);
//       if (m == null) {
//         final id = await database!.insert(tableMessage, message.toJson());
//       }
//     } catch (e) {
//       rethrow;
//     }
//     return message;
//   }

//   Future<List<MessageModel>> getMessages() async {
//     List<Map<String, dynamic>> maps = await database!.query(
//       tableMessage,
//       columns: [
//         columnId,
//         columnNumber,
//         columnType,
//         columnMessage,
//         columnReceivedAt,
//         columnSentAt,
//         columnInformedAt,
//         columnFailedAt,
//         columnNumberOfTries,
//       ],
//     );
//     return maps.map((e) => MessageModel.fromJson(e)).toList();
//   }

//   Future<List<MessageModel>> getSentMessages() async {
//     List<Map<String, dynamic>> maps = await database!.query(
//       tableMessage,
//       columns: [
//         columnId,
//         columnNumber,
//         columnType,
//         columnMessage,
//         columnReceivedAt,
//         columnSentAt,
//         columnInformedAt,
//         columnFailedAt,
//         columnNumberOfTries,
//       ],
//       where: '$columnInformedAt = ?',
//       whereArgs: [''],
//     );
//     return maps.map((e) => MessageModel.fromJson(e)).toList();
//   }

//   Future<MessageModel?> getMessage(int id) async {
//     List<Map<String, dynamic>> maps = await database!.query(
//       tableMessage,
//       columns: [
//         columnId,
//         columnNumber,
//         columnType,
//         columnMessage,
//         columnReceivedAt,
//         columnSentAt,
//         columnInformedAt,
//         columnFailedAt,
//         columnNumberOfTries,
//       ],
//       where: '$columnId = ?',
//       whereArgs: [id],
//     );
//     if (maps.isEmpty) {
//       return null;
//     }
//     final message = MessageModel.fromJson(maps[0]);
//     return message;
//   }

//   Future<int> delete(int id) async {
//     return await database!.delete(
//       tableMessage,
//       where: '$columnId = ?',
//       whereArgs: [id],
//     );
//   }

//   Future<int> deleteAll() async {
//     return await database!.delete(tableMessage, where: null, whereArgs: null);
//   }

//   Future<int> update(MessageModel message) async {
//     return await database!.update(
//       tableMessage,
//       message.toJson(),
//       where: '$columnId = ?',
//       whereArgs: [message.queueId],
//     );
//   }

//   Future close() async => database!.close();
// }
