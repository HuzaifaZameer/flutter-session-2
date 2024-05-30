import 'package:flutter/material.dart';
class BasicForm extends StatefulWidget {
  const BasicForm({super.key});

  @override
  _BasicFormState createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // You can add more complex password validation logic here if needed
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const FlutterLogo(size: 120),
              const SizedBox(height: 40),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white70,
                ),
                keyboardType: TextInputType.emailAddress,
                validator: _validateEmail,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white70,
                ),
                obscureText: true,
                validator: _validatePassword,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_emailController.text == "flutterdev@yopmail.com" &&
                      _passwordController.text == "Aa1234567@") {
                    showValidationSnackBar(context, message: "Login Successfully");
                  } else {
                    showValidationSnackBar(context, message: "Invalid Email Password", isError: true);
                  }
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // text color
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showValidationSnackBar(BuildContext context,
      {required String message, bool isError = false}) {
    if (context.mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            backgroundColor: isError ? Colors.red : Colors.blue,
            duration: const Duration(milliseconds: 3000),
            content: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
