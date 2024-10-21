import 'package:crud_app/product_list_screen.dart';
import 'package:flutter/material.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crud app',
      debugShowCheckedModeBanner: false,
      home: const ProductListScreen(),
      theme: _lightThemeData(),
      darkTheme: _darkThemeData(),
      themeMode: ThemeMode.system,
    );
  }

  ThemeData _lightThemeData (){
    return ThemeData(
      brightness: Brightness.light,
          inputDecorationTheme: const InputDecorationTheme(
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: OutlineInputBorder(

            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite),
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              )
          )
      );
  }
}
ThemeData _darkThemeData (){
  return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: const InputDecorationTheme(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
          )
      )
  );
}