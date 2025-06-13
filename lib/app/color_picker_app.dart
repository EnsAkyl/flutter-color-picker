import 'package:color_picker_app/config/config.dart';
import 'package:color_picker_app/config/routes/route_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorPickerApp extends ConsumerWidget {
  const ColorPickerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routesProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig:routerConfig,
    );
  }
}
