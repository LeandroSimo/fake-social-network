import 'package:mobx/mobx.dart';

part 'publication_store.g.dart';

class PublicationStore = _PublicationStoreBase with _$PublicationStore;
abstract class _PublicationStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}