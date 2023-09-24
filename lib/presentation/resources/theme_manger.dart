import 'package:complete_advance_flutter/presentation/resources/color_manger.dart';
import 'package:complete_advance_flutter/presentation/resources/font_manager.dart';
import 'package:complete_advance_flutter/presentation/resources/styles_manager.dart';
import 'package:complete_advance_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,

    disabledColor: ColorManager.grey1,// will be used incase of disabled button for example
    splashColor: ColorManager.primaryOpacity70,
    colorScheme: ColorScheme.fromSwatch(accentColor: Colors.blue),

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16)

  ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.white),
            backgroundColor: ColorManager.primary,  //primary
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),

      )
    ),

    // Button theme

    // Text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),//headline1
      titleMedium: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),//subtitle1
      bodySmall: getRegularStyle(color: ColorManager.grey1),//subtitle1
      bodyLarge: getRegularStyle(color: ColorManager.grey),//bodyText1
    ),
    // input decoration theme (Text Form Field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      //hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularStyle(color: ColorManager.error),

      //enabled Border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //focused Border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //error Border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //error Border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    )

  );
}