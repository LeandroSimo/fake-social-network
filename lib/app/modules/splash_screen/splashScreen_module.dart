import 'package:esig/app/modules/splash_screen/controller/splashScreen_store.dart';
import 'package:esig/app/modules/splash_screen/view/splashScreen_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashScreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashScreenPage()),
  ];
}
