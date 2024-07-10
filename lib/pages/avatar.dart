import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Colors.pinkAccent[800], // Rosado
      ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D5603AQHBt4FyQsrZcQ/profile-displayphoto-shrink_200_200/0/1697420755483?e=1724889600&v=beta&t=WwQ2BzvelE1ond0Ly_VfCuzRw4DrMAWLCNz3wkG3K0M',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Maricruz Doris Flores Alderete',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Agency',
                color: Colors.black,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  '+51 552 542 111',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.lightBlueAccent,
                ),
                title: Text(
                  'maricruz@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.lightBlueAccent,
                    fontFamily: 'Source Sans Pro',
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
