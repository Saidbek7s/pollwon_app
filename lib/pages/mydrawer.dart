import 'package:flutter/material.dart';
import 'package:uzum_clone/pages/contactpage.dart';
import 'package:uzum_clone/pages/settings.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.creativefabrica.com/wp-content/uploads/2022/05/17/Futuristic-Red-Blue-Background-Design-Graphics-30683310-1-312x208.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 8.0,
                  left: 4.0,
                  child: Text(
                    "Foydalanuvchi",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => const SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.grid_3x3_outlined),
            title: const Text("Products"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact"),
            onTap: () {Navigator.pop(context); 
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => const Contact(),
                ),
              );
            },
          ), 
      const Row(mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
              Text("version:1.0"),
        ],
      )
        ],
      ),
      
    );
  }
}
