import 'package:mobx/mobx.dart';

part 'splashScreen_store.g.dart';

class SplashScreenStore = _SplashScreenStoreBase with _$SplashScreenStore;
abstract class _SplashScreenStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}