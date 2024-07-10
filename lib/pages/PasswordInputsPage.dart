import 'package:flutter/material.dart';

class PasswordInputsPage extends StatefulWidget {
  @override
  State<PasswordInputsPage> createState() => _PasswordInputsPageState();
}

class _PasswordInputsPageState extends State<PasswordInputsPage> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Password-InputPage",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          obscureText: isInvisible,
          decoration: InputDecoration(
            hintText: "ingrese la contraseña",
            suffixIcon: IconButton(
              icon: isInvisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  isInvisible = !isInvisible;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
