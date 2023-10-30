import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sukses extends StatefulWidget {
  const Sukses({Key?key}) : super(key: key);
  
  @override
  State<Sukses> createState() => _SuksesState();
}

class _SuksesState extends State<Sukses>{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 350),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Selamat Datang Di Dompet Digital Wall',
              style: TextStyle(
                fontSize: 27,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
       ],
      ),
    );
  }
}