import 'package:esig/app/modules/posts/submodules/posts_details/controller/postsDetails_store.dart';
import 'package:esig/app/modules/posts/submodules/posts_details/view/postsDetails_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostsDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PostsDetailsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PostsDetailsPage(post: args.data,)),
  ];
}
