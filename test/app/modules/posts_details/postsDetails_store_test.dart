import 'package:esig/app/modules/posts/submodules/posts_details/controller/postsDetails_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late PostsDetailsStore store;

  setUpAll(() {
    store = PostsDetailsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}