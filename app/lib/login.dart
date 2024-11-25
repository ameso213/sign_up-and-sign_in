import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginScreen(),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                const _CustomTextField(
                  labelText: 'Email Address',
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 20),
                const _CustomTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Handle login logic
                    print('Login Successful!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    print('Forgot password clicked');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Sign Up Screen
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                const _CustomTextField(
                  labelText: 'Full Name',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(height: 20),
                const _CustomTextField(
                  labelText: 'Email Address',
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 20),
                const _CustomTextField(
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-up logic
                    print('Sign Up Successful!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Text Field Widget
class _CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final bool obscureText;

  const _CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
