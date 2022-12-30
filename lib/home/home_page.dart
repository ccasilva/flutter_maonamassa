import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nossa primeira AppBar',
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.airplanemode_inactive_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.airline_seat_individual_suite_rounded),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Center(child: Text('Drawer aberto')),
      ),
      body: Column(
        children: [
          const Text(
            'Testando uma fonte',
            style: TextStyle(fontFamily: 'LibreFranklin',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                        offset: Offset(10, 10)),
                    BoxShadow(
                        color: Colors.green,
                        blurRadius: 20,
                        offset: Offset(-10, -10)),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
