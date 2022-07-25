import 'package:esig/app/modules/posts/submodules/home/home_module.dart';
import 'package:esig/app/modules/posts/submodules/posts_details/postsDetails_module.dart';
import 'package:esig/app/modules/splash_screen/splashScreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashScreenModule()),
    ModuleRoute("/home", module: HomeModule()),
    ModuleRoute("/details", module: PostsDetailsModule()),
  ];

}