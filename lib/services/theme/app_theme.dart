import 'package:global_plug/utilities/imports/general_import.dart';

class AppThemes {
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: 'Poppins',
      colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
      checkboxTheme: CheckboxThemeData(
        overlayColor:
            WidgetStateProperty.resolveWith((state) => AppColors.primaryColor),
        checkColor:
            WidgetStateProperty.resolveWith((state) => AppColors.colorWhite),
        fillColor:
            WidgetStateProperty.resolveWith((state) => AppColors.colorWhite),
      ),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.deepPrimary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.resolveWith((state) => AppColors.primaryColor),
      )));
}
