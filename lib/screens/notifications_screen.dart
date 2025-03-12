import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificación'),
        backgroundColor: Colors.teal,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.teal.shade50,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _buildSectionTitle('Hoy'),
            _buildNotificationItem(
              icon: FontAwesomeIcons.bell,
              title: '¡Recordatorio!',
              subtitle: 'Configure sus ahorros automáticos para alcanzar su objetivo de ahorro...',
              time: '17:00 - April 24',
            ),
            _buildNotificationItem(
              icon: FontAwesomeIcons.solidNewspaper,
              title: 'Nueva Actualización',
              subtitle: 'Configure sus ahorros automáticos para alcanzar su objetivo de ahorro...',
              time: '17:00 - April 24',
            ),
            _buildSectionTitle('Ayer'),
            _buildNotificationItem(
              icon: FontAwesomeIcons.receipt,
              title: 'Actas',
              subtitle: 'Se ha registrado una nueva transacción\nComestibles | Despensa1 - \$100.00',
              time: '17:00 - April 24',
              highlight: true,
            ),
            _buildNotificationItem(
              icon: FontAwesomeIcons.bell,
              title: '¡Recordatorio!',
              subtitle: 'Configure sus ahorros automáticos para alcanzar su objetivo de ahorro...',
              time: '17:00 - April 24',
            ),
            _buildSectionTitle('Este fin de semana'),
            _buildNotificationItem(
              icon: FontAwesomeIcons.chartLine,
              title: 'Registro De Gastos',
              subtitle: 'Te recomendamos que estés más atento a tus finanzas.',
              time: '17:00 - April 24',
            ),
            _buildNotificationItem(
              icon: FontAwesomeIcons.receipt,
              title: 'Actas',
              subtitle: 'Se ha registrado una nueva transacción\nSe Ha Registrado Una Nueva Transacción',
              time: '17:00 - April 24',
              highlight: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Reportes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String time,
    bool highlight = false,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 30),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: highlight ? Colors.blue : Colors.black87,
            fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        trailing: Text(time, style: const TextStyle(color: Colors.black45, fontSize: 12)),
      ),
    );
  }
}
