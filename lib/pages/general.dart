import 'package:flutter/material.dart';

class general extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General-InputPage SIIII'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'correo electronico',
                      border: InputBorder.none,
                      suffixText: '0/20',
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.search, color: Colors.blue),
                SizedBox(width: 8),
                Expanded( // Agregado Expanded para que sea un campo de texto
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar producto',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.yellow, thickness: 2),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar producto...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
