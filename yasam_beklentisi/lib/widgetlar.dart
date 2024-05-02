import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyWidget extends StatelessWidget {
  final Widget? child;
  final Color renk;
  const MyWidget({this.renk = Colors.white10, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: child,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
class Cinsiyet extends StatelessWidget {
  final String cins;
  final IconData icon;


  const Cinsiyet({this.cins = 'Default', this.icon = FontAwesomeIcons.addressBook});
  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          shadows: const [Shadow(color: Colors.black54)],
        ),
       const SizedBox(
          height: 8,
        ),
        Text(
          cins,
          style: const TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}