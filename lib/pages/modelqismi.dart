import 'package:flutter/material.dart';

class Modelqismi extends StatefulWidget {
  const Modelqismi({super.key});

  @override
  State<Modelqismi> createState() => _ModelqismiState();
}

class _ModelqismiState extends State<Modelqismi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Modeli haqida'),
      ),
      body: Column(children: [ 
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(12)),
            height: 300,
            width: 400,
            
            child: Image.asset('assets/images/shrup.png'), 
            ),
          

        ),
     const   Text('Polwon shrupaveryot',style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.teal),),
         const SizedBox(),
       const   Text('Maxsulot xaqida sajdhsjh dshjhd dshsjdh sdhuhd eihde8d dhe8 dhde d8 dhe8hd 545454 6565566  sihxaixhixn ndwjwnxn8wjx8 nxjnw8nj n uxwn8dn ncjnunw nusoqidn  qisqacha malumot',style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black),),

       
      ],),
     
      floatingActionButton:  FloatingActionButton(onPressed: (){}, 
      hoverColor: Colors.teal,
      backgroundColor: Colors.green,
              child: const Icon(Icons.add_shopping_cart),
              ),
    );
  }
}