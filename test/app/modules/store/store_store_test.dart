import 'package:esig/app/modules/store/controller/store_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late StoreStore store;

  setUpAll(() {
    store = StoreStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}