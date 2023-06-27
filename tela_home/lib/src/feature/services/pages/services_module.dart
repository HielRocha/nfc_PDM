import 'package:flutter_modular/flutter_modular.dart';
import 'package:tela_inicial/src/feature/services/pages/criar_nfse.dart';
import 'package:tela_inicial/src/feature/services/pages/detalhes_nfse.dart';
import 'package:tela_inicial/src/feature/services/servico_prestado.dart';

class ServicesModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => ServicoPrestado()),
      ];
}
