import 'package:flutter_modular/flutter_modular.dart';
import 'package:tela_inicial/src/feature/home/pages/home_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (_, __) => const HomeScreen(nome: "")),
      ];
}
