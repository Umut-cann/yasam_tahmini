//import 'dart:math';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_beklentisi/constants.dart';
import 'widgetlar.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}


double sigara_sayisi = 15.0;
double spor_saati = 5.0;
int boy = 170;
int kilo = 50;


class kullanici {
  double sigara1;
  int boy1;
  int kilo1;
  double spor1;
  kullanici({required this.boy1, required this.sigara1, required this.kilo1,required this.spor1});
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {

    kullanici kullanici1=kullanici(boy1: boy, kilo1: kilo, sigara1: sigara_sayisi, spor1: spor_saati);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyWidget(
                    child: outlineButton('BOY'),
                  ),
                ),
                Expanded(
                  child: MyWidget(
                    child: outlineButton('KİLO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               const   Text(
                    'Günde kac saat spor yapıyorsun  ',
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),

                  // double i integer degere cevirdik
                  Text(
                    '${spor_saati.round()} ',
                    style: kSayiStili,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    divisions: 7,
                    // slider widget daki yazılı olan deger
                    value: spor_saati,
                    onChanged: (double newValue) {
                      setState(() {
                        spor_saati = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyWidget(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde kac adet sigara iciyorsun  ',
                    style: kMetinStili,
                  ),

                  // double i integer degere cevirdik
                  Text(
                    '${sigara_sayisi.round()} ',
                    style: kSayiStili,
                  ),
                  Slider(
                    min: 0,
                    max: 30,

                    // slider widget daki yazılı olan deger
                    value: sigara_sayisi,
                    onChanged: (double newValue) {
                      setState(() {
                        sigara_sayisi = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
         const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyWidget(
                    child:
                        Cinsiyet(cins: 'KADIN', icon: FontAwesomeIcons.venus),
                  ),
                ),
                Expanded(
                  child: MyWidget(
                    child: Cinsiyet(cins: 'ERKEK', icon: FontAwesomeIcons.mars),
                  ),
                ),
              ],
            ),
          ),
         const SizedBox(
            height: 15,
          ),

          ButtonTheme(
height: 50,
      
          
            child: TextButton(
             
              
              onPressed: () => {
              
           
                Navigator.pushNamed(context, '/sonuc',arguments: kullanici1),
               
              },
              child: const Text(
                'Hesapla',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row outlineButton(String ad) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            '$ad',
            style: kMetinStili,
          ),
        ),
      const  SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            ad == 'BOY' ? boy.toString() : kilo.toString(),
            style: kSayiStili,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              onPressed: () {
                setState(() {
                  ad == 'BOY' ? boy++ : kilo++;
                });
              },
              child: const Text(
                '+',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  ad == 'BOY' ? boy-- : kilo--;
                });
              },
              child: const Text(
                '-',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            )
          ],
        )
      ],
    );
  }
}
