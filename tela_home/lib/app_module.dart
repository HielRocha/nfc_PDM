import 'package:flutter_modular/flutter_modular.dart';
import 'package:tela_inicial/src/feature/auth/auth_module.dart';
import 'package:tela_inicial/src/feature/home/home_module.dart';
import 'package:tela_inicial/src/feature/services/pages/services_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: AuthModule()),
        ModuleRoute("/auth", module: AuthModule()),
        ModuleRoute("/home", module: HomeModule()),
        ModuleRoute("/services", module: ServicesModule()),
      ];
}
