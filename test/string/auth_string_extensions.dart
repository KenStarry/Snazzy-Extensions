import 'package:flutter_test/flutter_test.dart';
import 'package:snazzy_extensions/snazzy_extensions.dart';

void main() {
  group('Check Email Validity', () {
    /// Correct email structures
    group('Correct Email Structures', () {
      test('Correct Gmail structure with com suffix is Valid', () {
        const email = 'kenny@gmail.com';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, true);
      });
      test('Correct Gmail structure with co.ke is Valid', () {
        const email = 'kenny@gmail.co.ke';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, true);
      });
      test('Correct Gmail structure with custom domain is Valid', () {
        const email = 'kenny.michuki@company.com';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, true);
      });
    });

    /// Incorrect email structures
    group('Incorrect Email Structures', () {
      test('Email without @ sign is invalid', () {
        const email = 'kennygmail.com';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, false);
      });
      test('Email without domain name is invalid', () {
        const email = 'kenny@gmail';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, false);
      });
      test('Email without holder name is invalid', () {
        const email = '@gmail.com';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, false);
      });
      test('Email without domain and @ is invalid', () {
        const email = 'gmail';
        final isValid = email.szCheckEmailIsValid;

        expect(isValid, false);
      });
    });
  });
}
