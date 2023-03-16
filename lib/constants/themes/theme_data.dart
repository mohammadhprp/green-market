import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

mixin themes implements ThemeData {
  static ThemeData theme() => ThemeData(
        useMaterial3: true,
        fontFamily: FontConstants.fontFamily,

        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          color: Colors.transparent,
        ),

        // main colors of the app]
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primary,
        primaryColorDark: AppColors.primary,
        disabledColor: AppColors.grey100,
        brightness: Brightness.light,

        scaffoldBackgroundColor: AppColors.background,

        // card view theme
        cardTheme: const CardTheme(
          color: AppColors.grey100,
          elevation: AppSize.s0,
        ),

        // Button theme
        buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: AppColors.primaryLight,
          buttonColor: AppColors.primary,
          splashColor: AppColors.primary20,
        ),

        // elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: getSemiBoldStyle(color: AppColors.white),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.white,
            disabledBackgroundColor: AppColors.primaryLight,
            disabledForegroundColor: AppColors.white100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12),
            ),
          ),
        ),

        // text button theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: getSemiBoldStyle(color: AppColors.white),
            foregroundColor: AppColors.primaryDark,
            disabledBackgroundColor: AppColors.primaryLight,
            disabledForegroundColor: AppColors.white100,
          ),
        ),

        dialogTheme: const DialogTheme(
          elevation: 0,
        ),

        // Text theme
        textTheme: TextTheme(
          displayLarge: getBlackStyle(
            color: AppColors.black100,
            fontSize: FontSize.s20,
          ),
          displayMedium: getExtraBoldStyle(
            color: AppColors.black100,
            fontSize: FontSize.s20,
          ),
          displaySmall: getLightStyle(
            color: AppColors.grey400,
            fontSize: FontSize.s18,
          ),
          titleLarge: getBoldStyle(
            color: AppColors.black100,
            fontSize: FontSize.s14,
          ),
          titleMedium: getMediumStyle(
            color: AppColors.black100,
            fontSize: FontSize.s14,
          ),
          titleSmall: getLightStyle(
            color: AppColors.grey400,
            fontSize: FontSize.s14,
          ),
          bodyLarge: getMediumStyle(
            color: AppColors.black100,
            fontSize: FontSize.s17,
          ),
          bodyMedium: getRegularStyle(
            color: AppColors.black100,
            fontSize: FontSize.s16,
          ),
          bodySmall: getUltraLightStyle(
            color: AppColors.grey400,
            fontSize: FontSize.s14,
          ),
        ),

        // input decoration theme (text form field)
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.grey08,
          // hint style
          hintStyle: getMediumStyle(
            color: AppColors.grey400,
            fontSize: AppSize.s16,
          ),

          // label style
          labelStyle: getMediumStyle(
            color: AppColors.grey800,
            fontSize: AppSize.s16,
          ),

          // error style
          errorStyle: getMediumStyle(
            color: AppColors.error,
            fontSize: AppSize.s16,
          ),

          // enabled border
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),

          // focused border
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),

          // error border
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.error, width: AppSize.s1),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),

          // focused error border
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.grey100,
        ),
      );
}
