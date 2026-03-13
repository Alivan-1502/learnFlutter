class Urun {
  int? _id;
  String _ad;
  String _aciklama;
  double _fiyat;

  Urun(this._ad, this._aciklama, this._fiyat);
  Urun.withId(this._id, this._ad, this._aciklama, this._fiyat);

  int? get id => _id;

  set id(int value) {
    _id = value;
  }

  String get ad => _ad;

  set ad(String value) {
    if (value.length >= 2) {
      _ad = value;
    }
  }

  String get aciklama => _aciklama;

  set aciklama(String value) {
    _aciklama = value;
  }

  double get fiyat => _fiyat;

  set fiyat(double value) {
    _fiyat = value;
  }

  Map<String, dynamic> mapYap() {
    var map = <String, dynamic>{};
    map["isim"] = _ad;
    map["aciklama"] = _aciklama;
    map["fiyat"] = _fiyat;
    if (_id != null) {
      map["id"] = _id;
    }
    return map;
  }
  Urun.fromObject(dynamic o){
    _id = o ["id"];
    _ad = o ["ad"];
    _aciklama = o ["aciklama"];
    _fiyat = double.tryParse(o["fiyat"].toString()) ?? 0.0;   }

}