import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.black,
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
      ),
      colorScheme: const ColorScheme.dark(
        primary: Colors.white,
      ),
      brightness: Brightness.dark,
      // https://github.com/material-foundation/flutter-packages/issues/401
      textTheme: GoogleFonts.spaceGroteskTextTheme(
        const TextTheme(), // fixes the issue above ^^^
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        iconSize: 30,
      ),
      navigationDrawerTheme: NavigationDrawerThemeData(
        // NavigationDrawerThemeData doesn't set the background color properly.
        // Set it directly in the widget, instead.
        // backgroundColor: Colors.white.withOpacity(0.05),
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        labelTextStyle:
            const WidgetStatePropertyAll(TextStyle(color: Colors.white)),
        iconTheme:
            const WidgetStatePropertyAll(IconThemeData(color: Colors.white)),
        indicatorColor: Colors.white.withOpacity(0.25),
      ),
    );
