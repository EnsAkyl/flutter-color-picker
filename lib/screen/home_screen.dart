import 'package:color_picker_app/utils/extensions.dart';
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
              Container(
                width: deviceSize.width * 0.70,
                height: deviceSize.height * 0.37,
              ),
              const SizedBox(height: 10),
              Text("White"),

              Row(
                children: [DropdownButton(items: , onChanged: (value) {})],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
