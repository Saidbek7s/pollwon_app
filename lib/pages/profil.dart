import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Center(child: Text("Mening Profilim")),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
           const SizedBox(),
            Container(
              color: Colors.blueGrey,
              height: 100,
              width: 300,
              child: const Text("profilim"),
            ),
          ],
        ),
      ),
    );
  }
}
