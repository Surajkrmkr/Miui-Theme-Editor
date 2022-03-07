import 'package:fluent_ui/fluent_ui.dart';

getTooltip(String? str, BuildContext context) {
  showSnackbar(
    context,
    FluentTheme(
      data: ThemeData(
          tooltipTheme: const TooltipThemeData(
              showDuration: Duration(seconds: 3),
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)))),
      child: Snackbar(
        content: Text(str!),
      ),
    ),
  );
}
