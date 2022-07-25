import 'package:esig/app/modules/posts/controller/posts_store.dart';
import 'package:esig/app/modules/posts/posts_module.dart';
import 'package:esig/app/modules/posts/view/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late PostsStore store;

  setUpAll(() {
    store = PostsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
