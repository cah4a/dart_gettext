import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gettext/gettext.dart';
import 'package:sprintf/sprintf.dart';

void main() {
  runApp(new MyApp());
}

const locales = [
  Locale('en', 'US'),
  Locale('fr', 'FR'),
  Locale('es', 'ES'),
];

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static void nextLocale(BuildContext context) {
    _MyAppState state = context.ancestorStateOfType(TypeMatcher<_MyAppState>());

    state.setState(() {
      int index = locales.indexOf(state.locale);
      state.locale = locales[(index + 1) % locales.length];
    });
  }
}

class _MyAppState extends State<MyApp> {
  Locale locale = locales[0];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      locale: locale,
      localizationsDelegates: [
        new GettextLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: locales,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gt = GettextLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(gt.gettext("Hello, %s", ["UserName"]))),
      body: Center(
        child: RaisedButton(
          child: Text(gt.gettext("Change")),
          onPressed: () {
            MyApp.nextLocale(context);
          },
        ),
      ),
    );
  }
}

class GettextLocalizations {
  final Gettext gt;

  GettextLocalizations(this.gt);

  static GettextLocalizations of(BuildContext context) {
    return Localizations.of<GettextLocalizations>(
        context, GettextLocalizations);
  }

  String gettext(
      String msgid, [
        List args = const [],
      ]) {
    return sprintf(gt.gettext(msgid), args);
  }

  String ngettext(
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
  Future<GettextLocalizations> load(Locale locale) async {
    final data = await rootBundle.loadString("l10n/$locale.json");

    final jsonData = json.decode(data);

    gettext.locale = locale.toString();
    gettext.addTranslations(locale.toString(), Translations.fromJson(jsonData));

    return GettextLocalizations(gettext);
  }
}
