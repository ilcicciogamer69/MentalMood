import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Emozione extends Table{ //the emotion table of the database
  TextColumn get nome => text()(); //the name value of the emotion
  TextColumn get imgPath => text()(); //the path of the image of the emotion
  IntColumn get valore => integer()(); //the value of the emotion
}

class Utente extends Table{ //the user table of the database
  TextColumn get username=> text()(); //the username of the user
  TextColumn get nome => text()(); //the full name of the user
  IntColumn get dataNascita => integer()(); //the date of birth of the user
}

class Consiglio extends Table{ //the advice table of the database
  IntColumn get id => integer().autoIncrement()(); //the id of the advice
  TextColumn get testo => text()(); //the content of the advice
  IntColumn get valoreIniziale => integer()(); //the initial value of the advice
  IntColumn get valoreFinale => integer()(); //the final value of the advice
}


LazyDatabase _openConnection(){
  // The LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async{
    // Put the database file, called db.sqlite here,
    // into the documents folder for your app.
    final dbFolder = await  getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path,'db.sqlite'));
    return NativeDatabase(file);
  });
}

// This annotation tells drift to prepare a database
// class that uses the tables we just defined.
@DriftDatabase(tables: [Emozione, Utente, Consiglio])
class AppDataBase extends _$AppDataBase{
  // We tell the database where to store the data with this constructor.
  AppDataBase(): super(_openConnection());

  @override
  int get schemaVersion => 1; //the version of the database
  // Get all the emotions from DB
  Future<List<EmozioneData>> getEmozioneList() async{
    return await select(emozione).get();
  }
}

