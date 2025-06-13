import 'package:color_picker_app/providers/is_circle_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeContainerShape extends ConsumerWidget {
  const ChangeContainerShape({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCircle = ref.watch(isCircleProvider);

    return IconButton(
      onPressed: () {
        ref.read(isCircleProvider.notifier).state = !isCircle;
      },
      icon: Icon(isCircle ? Icons.circle_outlined : Icons.crop_square_outlined),
    );
  }
}
