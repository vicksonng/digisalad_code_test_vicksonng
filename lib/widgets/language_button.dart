import 'package:digisalad_code_test_vicksonng/config/locates.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: const Icon(Icons.language),
      items: SupportedLocales.locales.map(
        (locale) {
          return DropdownMenuItem(
            value: locale,
            child: Text(
              'lang.${locale.languageCode}'.tr(),
            ),
          );
        },
      ).toList(),
      onChanged: (Locale? value) async {
        if (value != null) await changeLocale(context, value);
      },
      value: context.locale,
    );
  }
}
