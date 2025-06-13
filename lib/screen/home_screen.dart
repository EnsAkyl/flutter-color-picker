import 'package:color_picker_app/providers/color_scheme_providers.dart';
import 'package:color_picker_app/utils/utils.dart';
import 'package:color_picker_app/widgets/selected_color_container.dart';
import 'package:color_picker_app/widgets/widgets.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      HomeScreen();

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = context.deviceSize;
    final selectedColor = ref.watch(selectedColorSchemeProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Colors Picker",
          style: context.textTheme.headlineSmall?.copyWith(
            color: context.colorScheme.surface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectedColorContainer(),
              const SizedBox(height: 10),
              SelectedColorName(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ColorSchemeDropdown()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
