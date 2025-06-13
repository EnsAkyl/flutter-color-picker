import 'package:color_picker_app/providers/providers.dart';
import 'package:color_picker_app/utils/utils.dart';
import 'package:color_picker_app/widgets/random_color_button.dart';
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
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectedColorContainer(),
              const SizedBox(height: 10),
              SelectedColorName(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorSchemeDropdown(),
                  const SizedBox(width: 10),
                  IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.circle_outlined),
                  ),
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
