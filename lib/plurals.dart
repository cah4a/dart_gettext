typedef int PluralFunc(int n);

class Plural {
  final String name;
  final List examples;
  final int nplurals;
  final String pluralsText;
  final PluralFunc pluralsFunc;

  Plural({
    this.name,
    this.examples,
    this.nplurals,
    this.pluralsText,
    this.pluralsFunc,
  });
}

final Map<String, Plural> plurals = {
  "ach": Plural(
    name: 'Acholi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => n > 1 ? 1 : 0,
  ),
  "af": Plural(
    name: 'Afrikaans',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => n != 1 ? 1 : 0,
  ),
  "ak": Plural(
    name: 'Akan',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => n > 1 ? 1 : 0,
  ),
  "am": Plural(
    name: 'Amharic',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "an": Plural(
    name: 'Aragonese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ar": Plural(
    name: 'Arabic',
    examples: [
      {
        "plural": 0,
        "sample": 0,
      },
      {
        "plural": 1,
        "sample": 1,
      },
      {
        "plural": 2,
        "sample": 2,
      },
      {
        "plural": 3,
        "sample": 3,
      },
      {
        "plural": 4,
        "sample": 11,
      },
      {
        "plural": 5,
        "sample": 100,
      },
    ],
    nplurals: 6,
    pluralsText:
        'nplurals = 6; plural = (n == 0 ? 0 : n == 1 ? 1 : n == 2 ? 2 : n % 100 >= 3 && n % 100 <= 10 ? 3 : n % 100 >= 11 ? 4 : 5)',
    pluralsFunc: (n) => (n == 0
        ? 0
        : n == 1
            ? 1
            : n == 2
                ? 2
                : n % 100 >= 3 && n % 100 <= 10 ? 3 : n % 100 >= 11 ? 4 : 5),
  ),
  "arn": Plural(
    name: 'Mapudungun',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "ast": Plural(
    name: 'Asturian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ay": Plural(
    name: 'Aymará',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "az": Plural(
    name: 'Azerbaijani',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "be": Plural(
    name: 'Belarusian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "bg": Plural(
    name: 'Bulgarian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "bn": Plural(
    name: 'Bengali',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "bo": Plural(
    name: 'Tibetan',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "br": Plural(
    name: 'Breton',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "brx": Plural(
    name: 'Bodo',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "bs": Plural(
    name: 'Bosnian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "ca": Plural(
    name: 'Catalan',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "cgg": Plural(
    name: 'Chiga',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "cs": Plural(
    name: 'Czech',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n == 1 ? 0 : (n >= 2 && n <= 4) ? 1 : 2)',
    pluralsFunc: (n) => (n == 1 ? 0 : (n >= 2 && n <= 4) ? 1 : 2),
  ),
  "csb": Plural(
    name: 'Kashubian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n == 1 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n == 1
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "cy": Plural(
    name: 'Welsh',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 3,
      },
      {
        "plural": 3,
        "sample": 8,
      },
    ],
    nplurals: 4,
    pluralsText:
        'nplurals = 4; plural = (n == 1 ? 0 : n == 2 ? 1 : (n != 8 && n != 11) ? 2 : 3)',
    pluralsFunc: (n) => (n == 1 ? 0 : n == 2 ? 1 : (n != 8 && n != 11) ? 2 : 3),
  ),
  "da": Plural(
    name: 'Danish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "de": Plural(
    name: 'German',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "doi": Plural(
    name: 'Dogri',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "dz": Plural(
    name: 'Dzongkha',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "el": Plural(
    name: 'Greek',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "en": Plural(
    name: 'English',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "eo": Plural(
    name: 'Esperanto',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "es": Plural(
    name: 'Spanish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "et": Plural(
    name: 'Estonian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "eu": Plural(
    name: 'Basque',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "fa": Plural(
    name: 'Persian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 1,
  ),
  "ff": Plural(
    name: 'Fulah',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "fi": Plural(
    name: 'Finnish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "fil": Plural(
    name: 'Filipino',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "fo": Plural(
    name: 'Faroese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "fr": Plural(
    name: 'French',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "fur": Plural(
    name: 'Friulian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "fy": Plural(
    name: 'Frisian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ga": Plural(
    name: 'Irish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 3,
      },
      {
        "plural": 3,
        "sample": 7,
      },
      {
        "plural": 4,
        "sample": 11,
      },
    ],
    nplurals: 5,
    pluralsText:
        'nplurals = 5; plural = (n == 1 ? 0 : n == 2 ? 1 : n < 7 ? 2 : n < 11 ? 3 : 4)',
    pluralsFunc: (n) => (n == 1 ? 0 : n == 2 ? 1 : n < 7 ? 2 : n < 11 ? 3 : 4),
  ),
  "gd": Plural(
    name: 'Scottish Gaelic',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 3,
      },
      {
        "plural": 3,
        "sample": 20,
      },
    ],
    nplurals: 4,
    pluralsText:
        'nplurals = 4; plural = ((n == 1 || n == 11) ? 0 : (n == 2 || n == 12) ? 1 : (n > 2 && n < 20) ? 2 : 3)',
    pluralsFunc: (n) => ((n == 1 || n == 11)
        ? 0
        : (n == 2 || n == 12) ? 1 : (n > 2 && n < 20) ? 2 : 3),
  ),
  "gl": Plural(
    name: 'Galician',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "gu": Plural(
    name: 'Gujarati',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "gun": Plural(
    name: 'Gun',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "ha": Plural(
    name: 'Hausa',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "he": Plural(
    name: 'Hebrew',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "hi": Plural(
    name: 'Hindi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "hne": Plural(
    name: 'Chhattisgarhi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "hr": Plural(
    name: 'Croatian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "hu": Plural(
    name: 'Hungarian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "hy": Plural(
    name: 'Armenian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "id": Plural(
    name: 'Indonesian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "is": Plural(
    name: 'Icelandic',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n % 10 != 1 || n % 100 == 11)',
    pluralsFunc: (n) => (n % 10 != 1 || n % 100 == 11) ? 1 : 0,
  ),
  "it": Plural(
    name: 'Italian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ja": Plural(
    name: 'Japanese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "jbo": Plural(
    name: 'Lojban',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "jv": Plural(
    name: 'Javanese',
    examples: [
      {
        "plural": 0,
        "sample": 0,
      },
      {
        "plural": 1,
        "sample": 1,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 0)',
    pluralsFunc: (n) => (n != 0) ? 1 : 0,
  ),
  "ka": Plural(
    name: 'Georgian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "kk": Plural(
    name: 'Kazakh',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "km": Plural(
    name: 'Khmer',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "kn": Plural(
    name: 'Kannada',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ko": Plural(
    name: 'Korean',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "ku": Plural(
    name: 'Kurdish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "kw": Plural(
    name: 'Cornish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 3,
      },
      {
        "plural": 3,
        "sample": 4,
      },
    ],
    nplurals: 4,
    pluralsText:
        'nplurals = 4; plural = (n == 1 ? 0 : n == 2 ? 1 : n == 3 ? 2 : 3)',
    pluralsFunc: (n) => (n == 1 ? 0 : n == 2 ? 1 : n == 3 ? 2 : 3),
  ),
  "ky": Plural(
    name: 'Kyrgyz',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "lb": Plural(
    name: 'Letzeburgesch',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ln": Plural(
    name: 'Lingala',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "lo": Plural(
    name: 'Lao',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "lt": Plural(
    name: 'Lithuanian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 10,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2),
  ),
  "lv": Plural(
    name: 'Latvian',
    examples: [
      {
        "plural": 2,
        "sample": 0,
      },
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n != 0 ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11 ? 0 : n != 0 ? 1 : 2),
  ),
  "mai": Plural(
    name: 'Maithili',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "mfe": Plural(
    name: 'Mauritian Creole',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "mg": Plural(
    name: 'Malagasy',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "mi": Plural(
    name: 'Maori',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "mk": Plural(
    name: 'Macedonian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n == 1 || n % 10 == 1 ? 0 : 1)',
    pluralsFunc: (n) => (n == 1 || n % 10 == 1 ? 0 : 1),
  ),
  "ml": Plural(
    name: 'Malayalam',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "mn": Plural(
    name: 'Mongolian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "mni": Plural(
    name: 'Manipuri',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "mnk": Plural(
    name: 'Mandinka',
    examples: [
      {
        "plural": 0,
        "sample": 0,
      },
      {
        "plural": 1,
        "sample": 1,
      },
      {
        "plural": 2,
        "sample": 2,
      },
    ],
    nplurals: 3,
    pluralsText: 'nplurals = 3; plural = (n == 0 ? 0 : n == 1 ? 1 : 2)',
    pluralsFunc: (n) => (n == 0 ? 0 : n == 1 ? 1 : 2),
  ),
  "mr": Plural(
    name: 'Marathi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ms": Plural(
    name: 'Malay',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "mt": Plural(
    name: 'Maltese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 11,
      },
      {
        "plural": 3,
        "sample": 20,
      },
    ],
    nplurals: 4,
    pluralsText:
        'nplurals = 4; plural = (n == 1 ? 0 : n == 0 || ( n % 100 > 1 && n % 100 < 11) ? 1 : (n % 100 > 10 && n % 100 < 20 ) ? 2 : 3)',
    pluralsFunc: (n) => (n == 1
        ? 0
        : n == 0 || (n % 100 > 1 && n % 100 < 11)
            ? 1
            : (n % 100 > 10 && n % 100 < 20) ? 2 : 3),
  ),
  "my": Plural(
    name: 'Burmese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "nah": Plural(
    name: 'Nahuatl',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "nap": Plural(
    name: 'Neapolitan',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "nb": Plural(
    name: 'Norwegian Bokmal',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ne": Plural(
    name: 'Nepali',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "nl": Plural(
    name: 'Dutch',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "nn": Plural(
    name: 'Norwegian Nynorsk',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "no": Plural(
    name: 'Norwegian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "nso": Plural(
    name: 'Northern Sotho',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "oc": Plural(
    name: 'Occitan',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "or": Plural(
    name: 'Oriya',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "pa": Plural(
    name: 'Punjabi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "pap": Plural(
    name: 'Papiamento',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "pl": Plural(
    name: 'Polish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n == 1 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n == 1
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "pms": Plural(
    name: 'Piemontese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ps": Plural(
    name: 'Pashto',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "pt": Plural(
    name: 'Portuguese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "rm": Plural(
    name: 'Romansh',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ro": Plural(
    name: 'Romanian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 20,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n == 1 ? 0 : (n == 0 || (n % 100 > 0 && n % 100 < 20)) ? 1 : 2)',
    pluralsFunc: (n) =>
        (n == 1 ? 0 : (n == 0 || (n % 100 > 0 && n % 100 < 20)) ? 1 : 2),
  ),
  "ru": Plural(
    name: 'Russian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "rw": Plural(
    name: 'Kinyarwanda',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sah": Plural(
    name: 'Yakut',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "sat": Plural(
    name: 'Santali',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sco": Plural(
    name: 'Scots',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sd": Plural(
    name: 'Sindhi',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "se": Plural(
    name: 'Northern Sami',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "si": Plural(
    name: 'Sinhala',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sk": Plural(
    name: 'Slovak',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n == 1 ? 0 : (n >= 2 && n <= 4) ? 1 : 2)',
    pluralsFunc: (n) => (n == 1 ? 0 : (n >= 2 && n <= 4) ? 1 : 2),
  ),
  "sl": Plural(
    name: 'Slovenian',
    examples: [
      {
        "plural": 1,
        "sample": 1,
      },
      {
        "plural": 2,
        "sample": 2,
      },
      {
        "plural": 3,
        "sample": 3,
      },
      {
        "plural": 0,
        "sample": 5,
      },
    ],
    nplurals: 4,
    pluralsText:
        'nplurals = 4; plural = (n % 100 == 1 ? 1 : n % 100 == 2 ? 2 : n % 100 == 3 || n % 100 == 4 ? 3 : 0)',
    pluralsFunc: (n) => (n % 100 == 1
        ? 1
        : n % 100 == 2 ? 2 : n % 100 == 3 || n % 100 == 4 ? 3 : 0),
  ),
  "so": Plural(
    name: 'Somali',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "son": Plural(
    name: 'Songhay',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sq": Plural(
    name: 'Albanian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sr": Plural(
    name: 'Serbian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "su": Plural(
    name: 'Sundanese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "sv": Plural(
    name: 'Swedish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "sw": Plural(
    name: 'Swahili',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "ta": Plural(
    name: 'Tamil',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "te": Plural(
    name: 'Telugu',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "tg": Plural(
    name: 'Tajik',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "th": Plural(
    name: 'Thai',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "ti": Plural(
    name: 'Tigrinya',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "tk": Plural(
    name: 'Turkmen',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "tr": Plural(
    name: 'Turkish',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "tt": Plural(
    name: 'Tatar',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "ug": Plural(
    name: 'Uyghur',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "uk": Plural(
    name: 'Ukrainian',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
      {
        "plural": 2,
        "sample": 5,
      },
    ],
    nplurals: 3,
    pluralsText:
        'nplurals = 3; plural = (n % 10 == 1 && n % 100 != 11 ? 0 : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20) ? 1 : 2)',
    pluralsFunc: (n) => (n % 10 == 1 && n % 100 != 11
        ? 0
        : n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 10 || n % 100 >= 20)
            ? 1
            : 2),
  ),
  "ur": Plural(
    name: 'Urdu',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "uz": Plural(
    name: 'Uzbek',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "vi": Plural(
    name: 'Vietnamese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "wa": Plural(
    name: 'Walloon',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n > 1)',
    pluralsFunc: (n) => (n > 1) ? 1 : 0,
  ),
  "wo": Plural(
    name: 'Wolof',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
  "yo": Plural(
    name: 'Yoruba',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
      {
        "plural": 1,
        "sample": 2,
      },
    ],
    nplurals: 2,
    pluralsText: 'nplurals = 2; plural = (n != 1)',
    pluralsFunc: (n) => (n != 1) ? 1 : 0,
  ),
  "zh": Plural(
    name: 'Chinese',
    examples: [
      {
        "plural": 0,
        "sample": 1,
      },
    ],
    nplurals: 1,
    pluralsText: 'nplurals = 1; plural = 0',
    pluralsFunc: (n) => 0,
  ),
};
