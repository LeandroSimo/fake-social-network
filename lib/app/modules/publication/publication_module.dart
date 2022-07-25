import 'package:esig/app/modules/publication/controller/publication_store.dart';
import 'package:esig/app/modules/publication/view/publication_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PublicationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PublicationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PublicationPage()),
  ];
}
