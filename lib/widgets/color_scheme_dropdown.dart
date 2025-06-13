import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/utils.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ColorSchemeDropdown extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedScheme = ref.watch(selectedColorSchemeProvider);

    return DropdownButton<FlexScheme>(
      value: selectedScheme,
      items:
          colors.entries.map((entry) {
            final FlexScheme scheme = entry.key;
            final String schemeName = entry.value;

            final Color primaryColor =
                FlexThemeData.light(scheme: scheme).colorScheme.primary;

            return DropdownMenuItem(
              value: scheme,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  const SizedBox(width: 10),

                  Text(schemeName, style: context.textTheme.labelMedium),
                ],
              ),
            );
          }).toList(),

      onChanged: (FlexScheme? newScheme) {
        ref.watch(selectedColorSchemeProvider.notifier).state = newScheme;
      },
    );
  }
}
