import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Login extends StatefulWidget {
  const Login({Key?key}) : super(key: key);
  
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF00008B),
        ),
        padding: const EdgeInsets.fromLTRB(24, 26, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Masukkan Email',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Type your email address',
                prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Masukkan Password',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Type your password',
                prefixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/sukses');
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                minimumSize: MaterialStateProperty.all<Size>(const Size(500, 50)), // Atur lebar dan tinggi sesuai keinginan
                ),
                child: const Text('Login', style: TextStyle(fontSize: 20,textBaseline: TextBaseline.alphabetic)),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/register");
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Belum Punya Akun?",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Register",
                        style: TextStyle(fontSize: 15, color: Colors.orangeAccent),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}