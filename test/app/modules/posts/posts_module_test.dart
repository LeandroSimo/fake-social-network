import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:esig/app/modules/posts/posts_module.dart';
 
void main() {

  setUpAll(() {
    initModule(PostsModule());
  });

}