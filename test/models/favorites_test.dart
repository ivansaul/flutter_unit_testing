import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/providers/favorites.dart';

void main() {
  group('Testing App Provider', () {
    final favorites = Favorites();
    test('A new item should be added', () {
      const number = 37;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
    test('An existing item should be removed', () {
      const number = 37;
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
