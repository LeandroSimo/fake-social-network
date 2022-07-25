import 'package:esig/app/modules/publication/controller/publication_store.dart';
import 'package:flutter_test/flutter_test.dart';
 
void main() {
  late PublicationStore store;

  setUpAll(() {
    store = PublicationStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}