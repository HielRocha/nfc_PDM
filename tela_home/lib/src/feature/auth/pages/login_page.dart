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
                  onPressed: () => login(),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Cadastrar'),
                  onPressed: () => cadastrar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  cadastrar() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  login() async {
    late final credential;
    try {
      credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
    } on FirebaseAuthException catch (e) {
      credential = null;
      if (e.code == 'user-not-found') {
        //credential = null;
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        //credential = null;
        print('Wrong password provided for that user.');
      }
    }
    if (credential == null) {
      print('Não logado');
    } else {
      Modular.to.navigate("/home");
      print('Logado');
    }
    ;
  }
}
