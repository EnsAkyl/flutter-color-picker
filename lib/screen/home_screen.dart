import 'package:color_picker_app/utils/utils.dart';
import 'package:color_picker_app/widgets/change_container_shape.dart';
import 'package:color_picker_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      HomeScreen();

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              SelectedColorContainer(),
              const SizedBox(height: 10),
              SelectedColorName(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ColorSchemeDropdown(),
                  ColorInfoButton(),
                  ChangeContainerShape(),
                ],
              ),
              const SizedBox(height: 25),
              RandomColorButton(),
            ],
          ),
        ),
      ),
    );
  }
}
