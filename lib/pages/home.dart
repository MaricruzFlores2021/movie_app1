import 'package:flutter/material.dart';
import 'avatar.dart';
import 'alert1.dart';
import 'alert.dart';
import 'input.dart';
import 'drawer_y_stack_page.dart';
import 'bbva_page.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Componentes'),
      ),
      body: Container(
        color: Colors.amberAccent, // Fondo gris grey[300]
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/imagen/i1.jpg',
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Flutter Componentes',
                        style: GoogleFonts.oregano(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildListTile(
              context,
              icon: Icons.account_circle,
              title: 'Avatar',
              subtitle: 'Ir a detalle de Avatar',
              page: avatar(),
            ),
            SizedBox(height: 10),
            _buildListTile(
              context,
              icon: Icons.warning_amber_outlined,
              title: 'Alert',
              subtitle: 'Ir a detalle de Alert',
              page: alert1(),
            ),
            SizedBox(height: 10),
            _buildListTile(
              context,
              icon: Icons.warning_amber_outlined,
              title: 'Alert2',
              subtitle: 'Ir a detalle de Alert',
              page: alert(),
            ),
            SizedBox(height: 10),
            _buildListTile(
              context,
              icon: Icons.input,
              title: 'Inputs',
              subtitle: 'Ir a detalle de Inputs',
              page: input(),
            ),
            SizedBox(height: 10),
            _buildListTile(
              context,
              icon: Icons.check,
              title: 'Drawer y Stack',
              subtitle: 'Ir a detalle de Drawer y Stack',
              page: DrawerYStackPage(),
            ),
            SizedBox(height: 10),
            _buildListTile(
              context,
              icon: Icons.check,
              title: 'APP BBVA',
              subtitle: 'Ir a app BBVA',
              page: BBVAPage(),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildListTile(BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Container(
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
        leading: Icon(icon),
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
