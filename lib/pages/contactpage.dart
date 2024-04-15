import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Contact"),),
         backgroundColor: Colors.teal,
        body: ContactUs(
          logo: const AssetImage('assets/images/tosh.png'),
          email: '',
          companyName: 'Saidbek Salohiddinov',
          phoneNumber: '',
          dividerThickness: 2,
          website: '',
          githubUserName: '',
          linkedinURL: '',
          tagLine: 'Flutter Developer',
          twitterHandle: '', textColor:Colors.black, cardColor: Colors.white, companyColor: Colors.white60, taglineColor: const Color.fromARGB(255, 255, 255, 255),
         
        ),
      
      
      
      );
  }
}