import 'package:flutter/material.dart';
import 'login_screen.dart';

class SelectLoginScreen extends StatelessWidget {
  const SelectLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: isWide
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Image.asset(
                        'assets/student.jpg',
                        fit: BoxFit.contain,
                        height: 400,
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  _buildLoginOptions(context),
                ],
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/student.jpg',
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 40),
                    _buildLoginOptions(context),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildLoginOptions(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Choose Login Type',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 40),
        _buildButton(
          context,
          label: "I’m a Student",
          color: Colors.blue.shade600,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => LoginScreen(role: 'student'),
            ));
          },
        ),
        SizedBox(height: 20),
        _buildButton(
          context,
          label: "I’m a Tutor",
          color: Colors.deepPurple,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => LoginScreen(role: 'tutor'),
            ));
          },
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label,
      required Color color,
      required VoidCallback onPressed}) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: onPressed,
        child: Text(label, style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}
