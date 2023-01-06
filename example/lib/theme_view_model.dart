import 'package:flutter/material.dart';
import 'package:folivora_palette/folivora_palette.dart';

class ThemeViewModel extends InheritedWidget {
  ThemeViewModel({super.key, required Widget child}) : super(child: child);
  final ValueNotifier<ThemeData> theme = ValueNotifier(FvTheme.light);

  void setLightMode() {
    theme.value = FvTheme.light;
  }

  void setDarkMode() {
    theme.value = FvTheme.dark;
  }

  static ThemeViewModel? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeViewModel>();

  void updateTheme(ThemeData theme) => this.theme.value = theme;

  @override
  bool updateShouldNotify(ThemeViewModel oldWidget) => oldWidget.theme != theme;
}