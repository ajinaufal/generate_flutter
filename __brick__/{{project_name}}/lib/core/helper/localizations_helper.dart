import 'package:{{project_name}}/l10n/l10n.dart';
import 'package:flutter/material.dart';

class L10n {
  static AppLocalizations of(BuildContext context) {
    final localizations =
        Localizations.of<AppLocalizations>(context, AppLocalizations);
    if (localizations != null) {
      return localizations;
    } else {
      throw Exception();
    }
  }
}
