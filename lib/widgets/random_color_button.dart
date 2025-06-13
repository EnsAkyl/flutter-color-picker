import 'dart:math';
import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/color_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomColorButton extends ConsumerWidget {
  const RandomColorButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final selectedColor = ref.watch(selectedColorSchemeProvider);
    final randomColors = colors.keys.toList();

    return FilledButton(
      onPressed: () {
        final randomNumber = Random().nextInt(randomColors.length);
        final randomColor = randomColors[randomNumber];

        ref.read(selectedColorSchemeProvider.notifier).state = randomColor;
      },
      child: Text("Rastgele Renk"),
    );
  }
}
