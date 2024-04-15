import 'package:flutter/material.dart';
import 'package:uzum_clone/pages/modelqismi.dart';
import 'package:uzum_clone/pages/mydrawer.dart';

class Homapage extends StatefulWidget {
  const Homapage({super.key});

  @override
  State<Homapage> createState() => _HomapageState();
}

class _HomapageState extends State<Homapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Pollwon'),
        backgroundColor: const Color.fromARGB(245, 49, 136, 128),
      ),
      drawer:  const MyDrawer(),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Image.asset('assets/images/polwn.png'),
                  ),
                  Tab(
                    child: Image.asset('assets/images/epa.png'),
                  ),
                  Tab(
                    child: Image.asset('assets/images/rtrmax.png'),
                  ),
                  Tab(
                    child: Image.asset('assets/images/bosch.png'),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.deepOrange,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red),
                                    child: const Text(
                                      '-20%',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  //
                                  Navigator.of(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (contex) => const Modelqismi()));
                                },
                                child: Image.asset(
                                  'assets/images/shrup.png',
                                  height: 100,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  '\$30',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(color: Colors.red, 
                    height: 100, 
                    width: 100,),
                    const Text('R T R M A X'),
                    Container(
                      margin: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.teal[200]),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.red),
                                      child: const Text(
                                        '-20%',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/bosh1.png',
                                    height: 150,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    '\$30',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
