import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? emailErrorText;
  String? passwordErrorText;

  final _key = GlobalKey<FormState>();

  String? _emailValidator(String? email) {
    if (email == null || email.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passwordValidator(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter your password';
    } else if (!RegExp(
            r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$')
        .hasMatch(password)) {
      return 'Minimum eight characters, at least one letter, one number and one special character';
    }
    return null;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter email", errorText: emailErrorText),
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: _emailValidator,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Enter password",
                      errorText: passwordErrorText),
                  controller: _passwordController,
                  validator: _passwordValidator,
                  obscureText: false,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String? emailError =
                          _emailValidator(_emailController.text);
                      String? passwordError =
                          _passwordValidator(_passwordController.text);
                      emailErrorText = emailError;
                      passwordErrorText = passwordError;
                    });
                    if (_key.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );
                    }
                  },
                  child: const Text('Get the text'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
