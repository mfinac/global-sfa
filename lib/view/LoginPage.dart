import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:globalsfa/view/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    print("password is $password");

    if (username == 'admin' && password == '123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );

    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Login Failed'),
            content: const Text('Invalid username or password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WELCOME TO GLOBAL SFA',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 20.0
          ),
        ), // Title for the app bar
        backgroundColor: Colors.blue, // Background color of the app bar
        centerTitle: true,

      ),
      backgroundColor: Colors.white, // Background color of the entire screen
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 70.0), // Top spacing
              // SvgPicture.asset(
              //   'assets/images/login.svg', // Path to your SVG image asset
              //   height: 200.0,
              // ),
              Image.asset(
                'assets/images/dm_logo.png', // Path to your PNG image asset
                height: 250.0,
              ),
              const SizedBox(height: 50.0), // Spacing between logo and text fields
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 10.0), // Spacing between text fields
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !_passwordVisible,
              ),
              const SizedBox(height: 40.0), // Spacing between text fields and button
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color of the button
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Padding around the button content
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0), // Rounded corners
                  ),
                  elevation: 3.0, // Shadow elevation
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
              const SizedBox(height: 20.0), // Spacing between text fields and button
              GestureDetector(
                onTap: () {
                  // Handle forgot password action here
                  print('Forgot password tapped');
                },
                child: const Text(
                  'Forgot password?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 100.0), // Spacing between text fields and button
              const Text(
                'Version 1.0', // Text to display below the button
                textAlign: TextAlign.center, // Center-align the text
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}