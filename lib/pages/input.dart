import 'package:flutter/material.dart';
import 'package:app_movie/pages/CalendarInputPage.dart';
import 'package:app_movie/pages/CapturaValoresdelInputPage.dart';
import 'PasswordInputsPage.dart';
import 'general.dart';

class input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InputPage SIIII'),
      ),
      body: ListView(
        children: [
          _buildListTile(
            context,
            title: 'General-Inputs',
            subtitle: 'Ir a detalle de General-Inputs',
            page: general(),
          ),
          _buildListTile(
            context,
            title: 'Password-Inputs',
            subtitle: 'Ir a detalle de Password-Inputs',
            page: PasswordInputsPage(), // Replace with actual page when created
          ),
          _buildListTile(
            context,
            title: 'Captura Valores del Input Page',
            subtitle: 'Ir a detalle de Captura Valores Input Page',
            page: CapturaValoresdelInputPage(), // Replace with actual page when created
          ),
          _buildListTile(
            context,
            title: 'Calendar Input Page',
            subtitle: 'Ir a detalle de Calendar Input Page',
            page: CalendarInputPage(), // Replace with actual page when created
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, {
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}