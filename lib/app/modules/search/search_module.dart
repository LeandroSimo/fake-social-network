import 'package:esig/app/modules/search/controller/search_store.dart';
import 'package:esig/app/modules/search/view/search_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SearchStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SearchPage()),
  ];
}
