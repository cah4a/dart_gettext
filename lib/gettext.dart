library gettext;

import 'plurals.dart';

typedef OnWarning(String message);

/// Class for translating strings using gettext textdomains.
class Gettext {
  final Map<String, Catalog> catalogs = {};
  final OnWarning onWarning;

  Gettext({this.onWarning});

  Function _pluralsFunc = (n) => 0;
  String _locale = '';
  String _domain = 'messages';

  String get locale => _locale;

  set locale(String value) {
    _locale = value ?? '';
    _pluralsFunc = plurals[getLanguageCode(_locale)]?.pluralsFunc;
  }

  String get domain => _domain;

  set domain(String value) => _locale = value ?? '';

  void addLocale(Map<String, dynamic> data, {String domain: 'messages'}) {
    assert(data["headers"] is Map<String, String>);
    assert(data["translations"] is Map<String, dynamic>);
    addTranslations(
      data["headers"]["language"],
      data["translations"],
      domain: domain,
    );
  }

  /// Stores a set of translations in the set of gettext catalogs.
  ///
  /// ```dart
  /// gt.addTranslations('sv-SE', translations, domain: 'messages')
  /// ```
  ///
  /// @param locale        A locale string
  /// @param domain        A domain name
  /// @param translations  An object of gettext-parser JSON shape
  void addTranslations(String locale,
      Map<String, dynamic> translations, {
        String domain: 'messages',
      }) {
    final catalog = catalogs[locale] ?? Catalog({});

    catalog.addTranslations(
      domain,
      Translations.fromJson(translations),
    );

    setCatalog(locale, catalog);

    if (_locale.isEmpty) {
      this.locale = locale;
    }
  }

  void setCatalog(String locale, Catalog catalog) {
    catalogs[locale] = catalog;
  }

  /// Translates a string using the default textdomain
  ///
  /// ```dart
  /// gt.gettext('Some text')
  /// ```
  ///
  /// @param  msgid  String to be translated
  /// @returns Translation or the original string if no translation was found
  String gettext(String msgid, {String domain, String msgctxt = ''}) {
    final translation = this._getTranslation(
      domain ?? this.domain,
      msgctxt,
      msgid,
    );

    if (translation == null || translation.msgstr[0]?.isNotEmpty != true) {
      _warn('No translation was found for '
          'msgid "$msgid" in msgctxt "$msgctxt" and domain "$domain"');
      return msgid;
    }

    return translation.msgstr[0];
  }

  /// Translates a plural string using the default textdomain
  ///
  /// ```dart:
  ///     gt.ngettext('One thing', 'Many things', numberOfThings)
  /// ```
  ///
  /// @param  msgid        String to be translated when count is not plural
  /// @param  msgidPlural  String to be translated when count is plural
  /// @param  count        Number count for the plural
  /// @returns Translation or the original string if no translation was found
  String ngettext(String msgid,
      String msgidPlural,
      int count, {
        String domain,
        String msgctxt = '',
      }) {
    final translation = this._getTranslation(
      domain ?? this.domain,
      msgctxt,
      msgid,
    );

    final index = _pluralsFunc(count);

    if (translation == null ||
        translation.msgstr.length <= index ||
        translation.msgstr[index]?.isNotEmpty != true) {
      _warn('No translation was found for '
          'msgid "$msgid" in msgctxt "$msgctxt" and domain "$domain"');
      return (count > 1) ? msgidPlural ?? msgid : msgid;
    }

    return translation.msgstr[index];
  }

  /// Retrieves translation object from the domain and context
  ///
  /// @private
  /// @param domain   A gettext domain name
  /// @param msgctxt  Translation context
  /// @param msgid    String to be translated
  /// @returns Translation object or null if not found
  Translation _getTranslation(String domain, String msgctxt, String msgid) {
    assert(domain != null);
    assert(msgctxt != null);
    assert(msgid != null);

    return catalogs[_locale]?.getTranslation(domain, msgctxt, msgid);
  }

  /// Returns the language code part of a locale
  ///
  /// ```dart
  /// Gettext.getLanguageCode('sv-SE'); // -> "sv"
  /// ```
  ///
  /// @param locale A case-insensitive locale string
  /// @returns A language code
  static String getLanguageCode(String locale) {
    return locale.split(RegExp(r'[\-_]'))[0].toLowerCase();
  }

  _warn(String message) {
    if (onWarning != null) {
      onWarning(message);
    }
  }
}

class Catalog {
  final Map<String, Translations> domains;

  const Catalog(this.domains);

  Translation getTranslation(String domain, String msgctxt, String msgid) {
    return this.domains[domain]?.getTranslation(msgctxt, msgid);
  }

  void addTranslations(String domain, Translations translations) {
    domains[domain] = translations;
  }
}

class Translations {
  final Map<String, Map<String, Translation>> contexts;

  const Translations(this.contexts);

  Translation getTranslation(String msgctxt, String msgid) {
    if (this.contexts[msgctxt] == null) {
      return null;
    }

    return this.contexts[msgctxt][msgid];
  }

  static Translations fromJson(Map<String, dynamic> contexts) {
    return new Translations(
      contexts.map((key, value) {
        final values = new Map<String, Translation>();

        if (value is Map<String, dynamic>) {
          value.forEach((msgid, json) {
            if (json is Map && json["msgstr"] is List) {
              values[msgid] = new Translation(
                json["msgstr"]
                    .map((row) => row.toString())
                    .cast<String>()
                    .toList(),
                comments: json["comments"],
              );
            }
          });
        }

        return MapEntry<String, Map<String, Translation>>(key, values);
      }),
    );
  }
}

class Translation {
  final List<String> msgstr;
  final Map<String, dynamic> comments;

  const Translation(this.msgstr, {this.comments}) : assert(msgstr != null);
}
