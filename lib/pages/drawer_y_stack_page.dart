import 'package:app_movie/pages/alert1.dart';
import'package:app_movie/pages/avatar.dart';
import 'package:app_movie/pages/alert.dart';
import 'package:app_movie/pages/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerYStackPage extends StatefulWidget {
  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}
class _DrawerYStackPageState extends State<DrawerYStackPage>{
  GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

  bool isInvisible =true;
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfffbf5ff),
          // appBar: AppBar(
          //).
          //title: Text("Login"),
          //backgroundColor: Colors.pinkAccent,
          key: _scaffolKey,
          drawer: Drawer(
            elevation: 20,
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color:Colors.pinkAccent,
                    image:DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(
                        "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&w=600"
                      )
                    )
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/18906146/pexels-photo-18906146/free-photo-of-moda-gente-mujer-nina.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                          ),
                        ),
                        Text(
                          "Colaborador",
                          style: GoogleFonts.poppins(
                            color: Colors.white70,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => avatar()));
                  },
                  leading: Icon(Icons.person),
                  title: Text("Avatar Page"),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => alert1()));
                  },
                  leading: Icon(Icons.warning),
                  title: Text("Alert 1"),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => alert()));
                  },
                  leading: Icon(Icons.person),
                  title: Text("Alert 2"),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => input()));
                  },
                  leading: Icon(Icons.edit),
                  title: Text("Inputs"),
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
                child: IconButton(
                  onPressed: () => _scaffolKey.currentState?.openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    color:Color(0xff944db7),
                    size: 30.0,
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -150,
                    child: MyCircleWidget(
                      colores:[
                        Color(0xffef9a2b),
                        Color(0xff110701),
                      ],
                      radius:400,
                    ),
                  ),
                  Positioned(
                    top:80,
                    left:30,
                    child: MyCircleWidget(
                      radius:50,
                      colores:[
                        Color(0xfff1e34a),
                        Color(0xff0c7544),
                      ]
                    ),
                  ),
                  Positioned(
                    bottom: -150,
                    left:-100,
                    child: MyCircleWidget(
                        radius:300,
                        colores:[
                          Color(0xfff1e34a),
                          Color(0xff8aeed3),
                        ],
                    ),
                  ),
                ],
              ),
              Center(
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180.0,
                        child: Text(
                          "Create Your Account",
                          style: TextStyle(
                            color: Color(0xff362274),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      TextField(
                        style: TextStyle(
                          color: Color(0xff945fc5),
                        ),
                        cursorColor: Color(0xff7766ad),
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff7c6cb0),
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Color(0xff9730ec),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff9730ec),
                              width: 1.4,
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          color: Color(0xff945fc5),
                        ),
                        cursorColor: Color(0xff7766ad),
                        obscureText: isInvisible,
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff7c6cb0),
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff72629b),
                          ),
                          suffixIcon: IconButton(
                            icon: isInvisible
                                ? Icon(
                                Icons.visibility_off,
                                color: Color(0xff72629b),
                                )
                                : Icon(
                                Icons.visibility,
                                color: Color(0xff72629b),
                                ),
                            onPressed: (){
                              isInvisible = !isInvisible;
                              //print("Maricruz");
                              setState(() {
                              });
                              },
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xff9730ec),
                                width: 1.4,
                             ),
                           ),
                        ),
                      ),
                      SizedBox(
                      height: 50.0,
                      ),
                      Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                        alignment: Alignment.center,
                        child: Text(
                        "Create Account",
                        style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  //const MyCircleWidget({
  //Key? key,
  // }) : super(key:key);
  double radius;
  List<Color> colores;

  MyCircleWidget({
    required this.radius,
    required this.colores,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colores,
        ),
        boxShadow: [
          BoxShadow(
            //color: Colors.pink.withOpacity(0.7),
            color: colores[0].withOpacity(0.7),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}
