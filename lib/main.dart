import 'package:flutter/material.dart';

void main() => runApp(const AppZoologico());

class AppZoologico extends StatelessWidget {
  const AppZoologico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animales del zoologico',
      home: const Animales(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Animales extends StatelessWidget {
  const Animales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Zoologico el Vaquera',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFFFF9C4),
        leading: const Icon(Icons.directions_car, color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.pets, color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.cruelty_free, color: Color.fromARGB(255, 5, 0, 0)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.map, color: Color.fromARGB(255, 0, 0, 0)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _buildColorfulItem(
            title: 'Inicio',
            subtitle: 'Pantalla principal',
            icon: Icons.home,
            color: Colors.blue.shade100,
            accentColor: Colors.blue.shade900,
          ),
          _buildColorfulItem(
            title: 'Favoritos',
            subtitle: 'Tus elementos guardados',
            icon: Icons.favorite,
            color: Colors.pink.shade100,
            accentColor: Colors.pink.shade900,
          ),
          _buildColorfulItem(
            title: 'Ajustes',
            subtitle: 'Configuración general',
            icon: Icons.settings,
            color: Colors.blueGrey.shade100,
            accentColor: Colors.blueGrey.shade900,
          ),
          _buildColorfulItem(
            title: 'Perfil',
            subtitle: 'Datos de usuario',
            icon: Icons.person,
            color: Colors.teal.shade100,
            accentColor: Colors.teal.shade900,
          ),
          _buildColorfulItem(
            title: 'Notificaciones',
            subtitle: 'Revisa tus alertas',
            icon: Icons.notifications,
            color: Colors.amber.shade100,
            accentColor: Colors.amber.shade900,
          ),
        ],
      ),
    );
  }
}

Widget _buildColorfulItem({
  required String title,
  required String subtitle,
  required IconData icon,
  required Color color,
  required Color accentColor,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: accentColor.withAlpha(77),
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        Icon(
          icon,
          color: accentColor,
          size: 30,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: accentColor.withAlpha(204),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
