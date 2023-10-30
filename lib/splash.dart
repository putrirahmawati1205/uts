
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({Key?key}) : super(key: key);
  
  @override
  State<Splash> createState() => _SplahState();
}

class _SplahState extends State<Splash>{

  @override
  void initState(){
    startTimer();
    super.initState();
  }

  startTimer(){
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: const Color(0xFF00008B),
      child: Center(
        child: SizedBox(
          width: 500, // Lebar kontainer
          height: 500, // Tinggi kontainer
          child: Image.asset("images/w.png"),
        ),
      ),
    );
  }
}