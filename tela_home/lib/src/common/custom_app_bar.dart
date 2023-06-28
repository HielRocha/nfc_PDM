import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_modular/flutter_modular.dart';

AppBar minhaBarra(String texto) {
  return AppBar(
    shadowColor: Colors.amber,
    backgroundColor: Colors.cyan,
    title: Text(
      texto,
      style: const TextStyle(
        fontSize: 38,
        color: Colors.black,
      ),
    ),
    actions: const <Widget>[
      IconButton(
        onPressed: logout,
        icon: Icon(Iconsax.logout_1),
      )
    ],
  );
}

logout() {
  print("Logout");
  FirebaseAuth.instance.signOut();
  Modular.to.navigate('/');
  print("fim");
}
