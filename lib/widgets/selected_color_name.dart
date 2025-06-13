import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class SelectedColorName extends ConsumerWidget {
  const SelectedColorName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedScheme = ref.watch(selectedColorSchemeProvider);
    final selectedColorName = colors[selectedScheme];
    final textTheme = context.textTheme;
    if (selectedScheme == null) return Text("Henüz Renk Seçilmedi", style: textTheme.labelLarge?.copyWith(fontSize: 20));

    return Text(
      "$selectedColorName",
      style: textTheme.labelLarge?.copyWith(fontSize: 20),
    );
  }
}
