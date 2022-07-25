import 'package:esig/app/modules/search/controller/search_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late SearchStore store;

  setUpAll(() {
    store = SearchStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}