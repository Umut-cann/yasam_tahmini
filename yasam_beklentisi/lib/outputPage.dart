import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/constants.dart';
import 'package:yasam_beklentisi/hesap.dart';
import 'package:yasam_beklentisi/input_Page.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class sonuc extends StatelessWidget {
  const sonuc({super.key});

  @override
  Widget build(BuildContext context) {



    kullanici? yerelkullanici =
        ModalRoute.of(context)!.settings.arguments as kullanici?;

    return Scaffold(
      appBar: AppBar(title: const Text('Sonuç Sayfası')),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 8,
child:Container(
            color: Colors.white,

          
               child: Center(child: Text(Hesap(yerelkullanici!).Hesaplama().round().toString()))
               
               
               ),

          ),
        
          Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context, '/');
                },
                child: Text('geri dön',style: kMetinStili,),
              ))
        ],
      ),
   
    );
  }
}
