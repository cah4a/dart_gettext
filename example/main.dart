import 'dart:convert';
import 'dart:io';

import "package:gettext/gettext.dart";

void main() async {
  final data = await File("./en_US.json").readAsString();

  final gt = Gettext();
  gt.addLocale(json.decode(data));

  print(gt.gettext("Hello"));
  print(gt.ngettext("An apple", "%d apples", 1));
  print(gt.ngettext("An apple", "%d apples", 3));
}
