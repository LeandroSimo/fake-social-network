import 'package:esig/app/modules/posts/controller/posts_store.dart';
import 'package:esig/app/modules/posts/view/posts_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PostsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PostsPage()),
  ];
}
