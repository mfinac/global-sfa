import 'package:flutter/material.dart';
import 'package:globalsfa/view/LoginPage.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  _LogoutPageState createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Show the logout confirmation dialog after the frame is rendered
      _showLogoutConfirmationDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout'),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Do you really want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // User confirmed logout, navigate to login page
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushReplacement( // Navigate to the login page
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // User cancelled logout, dismiss the dialog
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}
