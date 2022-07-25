// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ServiceController on _ServiceControllerBase, Store {
  late final _$postsAtom =
      Atom(name: '_ServiceControllerBase.posts', context: context);

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  late final _$callAPIAsyncAction =
      AsyncAction('_ServiceControllerBase.callAPI', context: context);

  @override
  Future<List<Post>> callAPI() {
    return _$callAPIAsyncAction.run(() => super.callAPI());
  }

  @override
  String toString() {
    return '''
posts: ${posts}
    ''';
  }
}
