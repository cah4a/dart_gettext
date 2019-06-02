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

Load messages from .json file:
```dart
new File("./en_US.json").readAsString().then(
   (data) {
       final gt = new Gettext();
       gt.addLocale(json.decode(data));
   }
);
```

Load messages from .mo or .po files using [gettext_parser](https://pub.dartlang.org/packages/gettext_parser):
```dart
import 'package:gettext_parser/gettext_parser.dart' as gettextParser;

File("./en_US.mo").readAsString().then(
   (data) {
       final gt = new Gettext();
       gt.addLocale(gettextParser.mo.parse(data));
   }
);
```

Json file content example:
```json
{
  "charset": "utf-8",
  "headers": {
    "mime-version": "1.0",
    "content-type": "text/plain; charset=utf-8",
    "content-transfer-encoding": "8bit",
    "language": "es-ES",
    "plural-forms": "nplurals=2; plural=(n!=1);"
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

See [example](example/main.dart)


## Usage with flutter

Use [flutter_gettext](https://pub.dartlang.org/packages/flutter_gettext) package.


## API

- addLocale(Map<String, dynamic> locale, {String domain: 'messages'})
- addTranslations(String localeName, Map<String, dynamic> translations, {String domain: 'messages'})
- setCatalog(String localeName, Catalog catalog)
- gettext(String msgid, {String domain, String context}) → `String`
- ngettext(String msgid, String msgplural, int count, {String domain, String context}) → `String`