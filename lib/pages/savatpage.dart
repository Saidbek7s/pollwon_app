import 'package:flutter/material.dart';

class Savat extends StatefulWidget {
  const Savat({super.key});

  @override
  State<Savat> createState() => _SavatState();
}

class _SavatState extends State<Savat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.transparent,
      title:const Center(child:  Text("Savat"))),
      body: Center(
        child:  TextButton(
                  onPressed: () {},
                  child: const Text("ejde"),
                ),
      ),
    );
  }
}
