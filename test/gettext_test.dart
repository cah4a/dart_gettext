import 'package:gettext/gettext.dart';
import 'package:test/test.dart';

main() {
  Gettext gt;

  setUp(() => gt = new Gettext());

  test("getLanguageCode", () {
    expect(
      Gettext.getLanguageCode('ab-cd_ef.utf-8'),
      'ab',
    );

    expect(
      Gettext.getLanguageCode('ab-cd_ef'),
      'ab',
    );
  });

  test("Returns input if no translations", () {
    expect(gt.gettext('input'), 'input');
  });

  test("Translates", () {
    final translations = Translations.fromJson({
      "": {
        "input": {
          "msgstr": ["output"]
        }
      }
    });

    gt
      ..addTranslations('en-US', translations)
      ..locale = 'en-US';

    expect(gt.gettext('input'), 'output');
  });

  group("Works with plurals", () {
    test("En", () {
      final translations = Translations.fromJson({
        "": {
          "input": {
            "msgstr": ["output", "outputs"]
          }
        }
      });

      gt
        ..addTranslations('en-US', translations)
        ..locale = 'en-US';

      expect(gt.ngettext('input', 'inputs', 1), 'output');
      expect(gt.ngettext('input', 'inputs', 2), 'outputs');
    });

    test("Ru", () {
      final translations = Translations.fromJson({
        "": {
          "input": {
            "msgstr": ["карандаш", "карандаша", "карандашей"]
          }
        }
      });

      gt
        ..addTranslations('ru-RU', translations)
        ..locale = 'ru-RU';

      expect(gt.ngettext('input', 'inputs', 1), 'карандаш');
      expect(gt.ngettext('input', 'inputs', 2), 'карандаша');
      expect(gt.ngettext('input', 'inputs', 10), 'карандашей');
    });
  });
}
