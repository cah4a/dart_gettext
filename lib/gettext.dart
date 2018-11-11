library gettext;

import 'plurals.dart';

typedef OnWarning(String message);

class Gettext {
  final Map<String, Catalog> catalogs = new Map();
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

  /**
   * Stores a set of translations in the set of gettext catalogs.
   *
   * @example
   *     gt.addTranslations('sv-SE', translations, domain: 'messages')
   *
   * @param {String} locale        A locale string
   * @param {String} domain        A domain name
   * @param {Object} translations  An object of gettext-parser JSON shape
   */
  void addTranslations(String locale, Translations translations,
      {String domain: 'messages'}) {
    if (!catalogs.containsKey(locale)) {
      catalogs[locale] = new Catalog({});
    }

    catalogs[locale].addTranslations(domain, translations);

    if (_locale.isEmpty) {
      this.locale = locale;
    }
  }

  /**
   * Translates a string using the default textdomain
   *
   * @example
   *     gt.gettext('Some text')
   *
   * @param  {String} msgid  String to be translated
   * @return {String} Translation or the original string if no translation was found
   */
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

  /**
   * Translates a plural string using the default textdomain
   *
   * @example
   *     gt.ngettext('One thing', 'Many things', numberOfThings)
   *
   * @param  {String} msgid        String to be translated when count is not plural
   * @param  {String} msgidPlural  String to be translated when count is plural
   * @param  {Number} count        Number count for the plural
   * @return {String} Translation or the original string if no translation was found
   */
  String ngettext(
    String msgid,
    String msgidPlural,
    int count, {
    String domain,
    String msgctxt = '',
  }) {
    final translation =
        this._getTranslation(domain ?? this.domain, msgctxt, msgid);

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

  /**
   * Retrieves translation object from the domain and context
   *
   * @private
   * @param  {String} domain   A gettext domain name
   * @param  {String} msgctxt  Translation context
   * @param  {String} msgid    String to be translated
   * @return {Translation} Translation object or null if not found
   */
  Translation _getTranslation(String domain, String msgctxt, String msgid) {
    assert(domain != null);
    assert(msgctxt != null);
    assert(msgid != null);

    return catalogs[_locale]?.getTranslation(domain, msgctxt, msgid);
  }

  /**
   * Returns the language code part of a locale
   *
   * @example
   *     Gettext.getLanguageCode('sv-SE')
   *     // -> "sv"
   *
   * @private
   * @param   {String} locale  A case-insensitive locale string
   * @returns {String} A language code
   */
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

  Catalog(this.domains);

  Translation getTranslation(String domain, String msgctxt, String msgid) {
    return this.domains[domain]?.getTranslation(msgctxt, msgid);
  }

  void addTranslations(String domain, Translations translations) {
    domains[domain] = translations;
  }
}

class Translations {
  final Map<String, Map<String, Translation>> contexts;

  Translations(this.contexts);

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

  Translation(this.msgstr, {this.comments}) : assert(msgstr != null);
}
