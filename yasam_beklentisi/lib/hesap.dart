import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/input_Page.dart';
import 'package:yasam_beklentisi/widgetlar.dart';

class Hesap {
  kullanici _kullanici;

  Hesap(this._kullanici);

  double Hesaplama() {
    double sonuc;

    sonuc = (90 + _kullanici.spor1 - _kullanici.sigara1);
    sonuc = sonuc + (_kullanici.boy1 / _kullanici.kilo1);

    //Cinsiyetle alakalı kadınsa 5 ekle
    return sonuc;
  }
}
