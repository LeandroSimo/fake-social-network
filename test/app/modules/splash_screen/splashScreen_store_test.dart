import 'package:esig/app/modules/splash_screen/controller/splashScreen_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late SplashScreenStore store;

  setUpAll(() {
    store = SplashScreenStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}