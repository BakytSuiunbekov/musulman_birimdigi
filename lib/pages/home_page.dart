import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:musulman_birimdigi/utils/app_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/images/kaaba.jpg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 12, 39, 138),
            centerTitle: true,
            title: const Text(
              'МУСУЛМАН БИРИМДИГИ',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: const IconThemeData(color: Colors.green),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          ),
          drawer: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 140,
            ),
            child: Drawer(
              backgroundColor: Colors.white10,
              child: ListView(
                children: [
                  // DrawerHeader(
                  //   decoration: BoxDecoration(
                  //     color: Colors.white10,
                  //   ),
                  //   child: Text('drawer'),
                  // ),
                  ListTile(
                    title: const Text(
                      AppText.accaunt,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      AppText.namazUbaktysy,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      AppText.daraja,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      AppText.investIshker,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      AppText.masterBot,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      AppText.sozduk,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          body: content(),
        ),
      ],
    );
  }

  Widget content() {
    return Container(
      child: CarouselSlider(
          items: [1, 2, 3, 4, 5].map(
            (e) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Text$e',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              );
            },
          ).toList(),
          options: CarouselOptions(height: 300)),
    );
  }
}
