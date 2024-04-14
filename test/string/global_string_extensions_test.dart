import 'package:flutter_test/flutter_test.dart';
import 'package:snazzy_extensions/snazzy_extensions.dart';

void main() {
  group('Truncate Name', () {
    test('Test one-worded names', () {
      const name = 'John';

      final truncatedName = name.szTruncateName();

      expect(truncatedName, 'John');
    });

    test('Test two-worded names', () {
      const name = 'John Doe';

      final truncatedName = name.szTruncateName();

      expect(truncatedName, 'John D.');
    });

    test('Test three-or-more-worded names', () {
      const name = 'John Doe Splintzer K';

      final truncatedName = name.szTruncateName();

      expect(truncatedName, 'John D.');
    });
  });
}
