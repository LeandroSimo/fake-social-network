import 'package:esig/app/modules/store/controller/store_store.dart';
import 'package:esig/app/modules/store/view/store_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StoreStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StorePage()),
  ];
}
