import 'package:flutter/material.dart';
import 'package:food_app/pages/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Selamat Datang!',
                    style: TextStyle(
                      fontSize: 35,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                Text('Silahkan Login sebelum memesan makanan'),
                _usernameField(),
                _passwordField(),
                _loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red)),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: visible,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.red)),
          suffixIcon: IconButton(
            icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          bool loginSukes = false;
          if (username == "fulan" && password == "fulan") {
            text = "Login Berhasil";
            loginSukes = true;
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage(username: username);
            }));
          } else {
            text = "Username atau Password Salah";
            loginSukes = false;
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
            backgroundColor: loginSukes ? Colors.green : Colors.red,
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login"),
      ),
    );
  }
}
