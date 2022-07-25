import 'package:esig/app/modules/profile/controller/profile_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late ProfileStore store;

  setUpAll(() {
    store = ProfileStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}