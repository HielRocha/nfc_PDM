import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  var _emailReset;

  void _updateEmailReset(val) {
    setState(() {
      _emailReset = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                TextFormField(
                  onChanged: (value) => {
                    _updateEmailReset(value),
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'email@email.com',
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                Text('Email é: $_emailReset'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    ElevatedButton(
                      child: const Text('Resetar'),
                      onPressed: () => resetar(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  resetar() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailReset);
  }
}
