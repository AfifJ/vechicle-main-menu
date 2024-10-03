import 'package:flutter/material.dart';
import 'package:vechicle_app_pam/screens/home_page.dart';
// import 'package:vechicle_app_pam/components/local_input_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _message = '';

  void _login() {
    if (_usernameController.text == 'admin' &&
        _passwordController.text == 'admin') {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    username: _usernameController.text,
                  )));
      // username: "halo",
      // setState(() {
      //   _message = 'Login berhasil';
      // });
    } else {
      setState(() {
        _message = 'Username atau password tidak benar';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Column(
        children: [
          const Text("Welcome Back"),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
              controller: _usernameController,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              controller: _passwordController,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Login'),
          ),
          const SizedBox(height: 20),
          Text(_message)
        ],
      ),
    );
  }
}
