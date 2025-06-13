import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/color_alerts.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorInfoButton extends ConsumerWidget {
  const ColorInfoButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(selectedColorSchemeProvider);

    final selectedColor =
        FlexThemeData
            .light(scheme: colors)
            .colorScheme
            .primary;

    return IconButton(
      onPressed: () {
        if (colors == null) {
          ColorAlerts.displaySnackBar(context, "RGB: (0,0,0)");
        }
        ColorAlerts.displaySnackBar(
            context, "RGB: (${selectedColor.red}, ${selectedColor.green}, ${selectedColor.blue})"
            );
      },
      icon: Icon(Icons.info),
    );
  }
}
