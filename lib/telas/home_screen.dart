import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'add_pet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home")),
    AddPetPage(),
    Center(child: Text("Busca")),
    Center(child: Text("Perfil")),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.add, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromARGB(204, 189, 183, 135),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Bem vindos!',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.info, color: Colors.orange),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Informação'),
                  content: Text(
                    'O formulário abaixo é destinado para o cadastro de pets recém chegados no abrigo.',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Fechar'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),

      body: _pages[_pageIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(
          context,
        ).copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          height: 60,
          items: items,
          color: Colors.orange,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.orange,

          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
        ),
      ),
    );
  }
}
