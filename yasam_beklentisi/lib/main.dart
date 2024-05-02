

import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/input_Page.dart';
import 'outputPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.lightBlue,
      ),

// genelde ilk sayfa için gelenek olarak / kullanılır
// initial route ilk sayfa demektir yani varsayılan rota

      initialRoute: '/',
routes: {
'/':(context) => const InputPage(),
'/sonuc':(context) => const sonuc(),
},

   
    );
  }
}
