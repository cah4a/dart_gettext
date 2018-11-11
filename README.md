# Dart Gettext

A Dart implementation of gettext, a localization framework.

Rewritten to dart of [node-gettext](https://github.com/alexanderwallin/node-gettext) package.

Also works perfectly with flutter.

## Features

- Supports domains, contexts and plurals
- Ships with plural forms for 136 languages
- Change locale or domain on the fly
- Emits events for internal errors, such as missing translations


## Usage

```dart
import "package:gettext/gettext.dart";

final gt = new Gettext(onWarning: print);
```

Load data from json:
```dart
new File("./en_US.json").readAsString().then(
   (data) {
       final json = json.decode(data["translations"]);
       final gt = new Gettext();
       gt.addTranslations('en_US', Translations.fromJSON(json));
   }
);
```

Json content:
```json
{
  "charset": "utf-8",
  "headers": {
    "mime-version": "1.0",
    "content-type": "text/plain; charset=utf-8",
    "content-transfer-encoding": "8bit",
    "language": "es-ES",
    "plural-forms": "nplurals=2; plural=(n!=1);",
  },
  "translations": {
    "": {
      "Hello": {
        "msgid": "Hello",
        "comments": {
           "translator": "Normal string"
        },
        "msgstr": [
           "Hola"
        ]
      },
      "An apple": {
        "msgid": "1 apple",
        "comments": {
           "translator": "Plural string"
        },
        "msgstr": [
           "una manzana",
           "%d manzanas"
        ]
      }
    }
  }
}
```

Change locale:
```dart
gt.locale = "en_US";
```

Change default domain:
```dart
gt.domain = "types";
```

Translate messages:
```dart
gt.gettext("Hello");
```

Translate messages with plural forms:
```dart
gt.ngettext("An apple", "%d apples", 3); // returns "%d apples"
```


## API

- gettext(String msgid, {String domain, String context}) → `String`
- ngettext(String msgid, String msgplural, int count, {String domain, String context}) → `String`

## Working with Flutter

```dart
import 'package:flutter/widgets.dart';
import 'package:sprintf/sprintf.dart';
import 'package:gettext/gettext.dart';

class GettextLocalizations {
  final Gettext gt;

  GettextLocalizations(this.gt);

  static GettextLocalizations of(BuildContext context) {
    return Localizations.of<GettextLocalizations>(
        context, GettextLocalizations);
  }

  String __(
    String msgid, [
    List args = const [],
  ]) {
    return sprintf(gt.gettext(msgid), args);
  }

  String __n(
    String msgid,
    String msgidPlural,
    int count, [
    List arg = const [],
  ]) {
    return sprintf(
      gt.ngettext(msgid, msgidPlural, count),
      <dynamic>[count]..addAll(arg),
    );
  }
}

class GettextLocalizationsDelegate
    extends LocalizationsDelegate<GettextLocalizations> {
  final gettext = new Gettext();

  @override
  bool isSupported(Locale locale) => true;

  @override
  bool shouldReload(LocalizationsDelegate<GettextLocalizations> old) => false;

  @override
  Future<GettextLocalizations> load(Locale locale) {
    return loadData(locale).then((data) {
      gettext.locale = locale.toString();
      gettext.addTranslations(locale.toString(), Translations.fromJson(data));
      return GettextLocalizations(gettext);
    });
  }
}
```