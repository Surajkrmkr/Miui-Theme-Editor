import 'package:fluent_ui/fluent_ui.dart';

getTooltip(String? str, BuildContext context) {
  showSnackbar(
    context,
    FluentTheme(
      data: ThemeData(
        tooltipTheme: const TooltipThemeData(
          showDuration: Duration(seconds: 3),
        ),
      ),
      child: Snackbar(
        content: Text(str!),
      ),
    ),
  );
}
