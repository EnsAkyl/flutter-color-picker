import 'package:color_picker_app/utils/utils.dart';
import 'package:flutter/material.dart';

class ColorAlerts {
  ColorAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          textAlign: TextAlign.center,
          message,
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            color: context.colorScheme.surface,
          ),
        ),
        backgroundColor: context.colorScheme.primary,
      ),
    );
  }
}
