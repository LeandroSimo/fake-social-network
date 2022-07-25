import 'package:mobx/mobx.dart';

part 'postsDetails_store.g.dart';

class PostsDetailsStore = _PostsDetailsStoreBase with _$PostsDetailsStore;
abstract class _PostsDetailsStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}