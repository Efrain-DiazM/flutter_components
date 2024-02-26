import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('My AppBar'),
        elevation: 15,
        shadowColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
            onPressed: _add,
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('RESERVAS'),
          const Card(
            child: Image(
              image: NetworkImage(
                  'https://www.conely.es/wp-content/uploads/2019/07/decoracion-habitacion-hotel.jpg'),
              height: 200,
            ),
          ),
          // Spacer(),
          Card(
            color: Color.fromARGB(255, 201, 197, 197),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('texto'),
                    Text('texto'),
                  ],
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Help text',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Location',
                    hintText: 'Insert text',
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
                IconButton(
                    onPressed: () {
                      _add();
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Home'),
            ),
            ListTile(title: Text('Profile')),
            ListTile(title: Text('Settings')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        ],
        onTap: (index) {},
      ),
    ));
  }

  void _add() {
    print('Hola');
  }
}
