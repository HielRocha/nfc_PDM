import 'package:flutter_modular/flutter_modular.dart';
import 'package:tela_inicial/src/feature/auth/pages/cadastrar_page.dart';
import 'package:tela_inicial/src/feature/auth/pages/login_page.dart';
import 'package:tela_inicial/src/feature/auth/pages/reset_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => const LoginPage()),
        //ChildRoute("/cadastrar", child: (_, __) => const CadastrarPage()),
        ChildRoute("/resetar", child: (_, __) => const ResetPage()),
      ];
}
