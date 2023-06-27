import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('Não logado');
      } else {
        print('Logado');
      }
    });
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get obscureText => null;
  var _email;
  var _password;
  void _updateEmail(val) {
    setState(() {
      _email = val;
    });
  }

  void _updatePassword(val) {
    setState(() {
      _password = val;
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
                    _updateEmail(value),
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'email@email.com',
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                Text('Email é: $_email'),
                const SizedBox(height: 8),
                TextFormField(
                  onChanged: (value) => {
                    _updatePassword(value),
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                Text('Password é: $_password'),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Entrar'),
                  onPressed: () => Modular.to.navigate("/home"),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Cadastrar'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('Não logado');
        Modular.to.navigate("/home");
      } else {
        print('Logado');
      }
    });
  }
}
