import 'package:color_picker_app/utils/utils.dart';
import 'package:flutter/material.dart';

class ColorAlerts {
  ColorAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 1),
        content: Text(
          textAlign: TextAlign.center,
          message,
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            color: context.colorScheme.surface,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: context.colorScheme.primary,
      ),
    );
  }
}
