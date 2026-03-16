import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'package:mini_store/models/urun.dart';

class DbHelper {
  String tblUrun = "urunler";
  String colId = "id";
  String colAd = "ad";
  String colFiyat = "fiyat";
  String colAciklama = "aciklama";

  //Singleton DbHelper
  DbHelper._internal();
  static final DbHelper _dbHelper = DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  //veritabanına ulaşmak
  static Database _db;

  Future<Database> get db async {
    _db ??= await dbOlustur();
    return _db;
  }
  Future<Database>dbOlustur() async{
    Directory dosya = await getApplicationDocumentsDirectory();
    String yol = dosya.path + "eticaret.db";

    var eTicaret = await openDatabase(yol,version: 1, onCreate: olustur);
  }

  void olustur (Database db, int version)async{
  await db.execute("Create table $tblUrun($colId integer primary key,"
  "$colAd text, $colAciklama text, $colFiyat int)");    
  }
}
