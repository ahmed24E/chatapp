import 'package:chatapp/pages/login.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/appimage/logo.jpeg'),
            ),
            SizedBox(height: 10),
            Text(
              'Chatia',
              style: TextStyle(
                  color: Color.fromARGB(255, 72, 33, 243),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              'Chat with every body',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
