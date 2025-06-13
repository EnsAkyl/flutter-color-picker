import 'package:color_picker_app/providers/is_circle_provider.dart';
import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/utils.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedColorContainer extends ConsumerWidget {
  const SelectedColorContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = context.deviceSize;
    final selectedColor = ref.watch(selectedColorSchemeProvider);
    final isCircle = ref.watch(isCircleProvider);

    Color containerColor;

    if (selectedColor == null) {
      containerColor = Colors.black12;
    } else {
      containerColor =
          FlexThemeData.light(scheme: selectedColor).colorScheme.primary;
    }

    return Container(
      width: deviceSize.width * 0.7,
      height: deviceSize.height * 0.39,

      decoration: BoxDecoration(
        borderRadius:
            isCircle ? BorderRadius.circular(20) :  BorderRadius.circular(200),
        color: containerColor,
      ),
    );
  }
}
