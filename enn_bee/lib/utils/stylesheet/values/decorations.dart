// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'values.dart';

class Decorations {
  static BoxDecoration screenContainerDeco = BoxDecoration(
    color: AppColors.screenBackgroundColor,
  );
  static BoxDecoration buttonContainerDeco = BoxDecoration(
      color: Color.fromARGB(0, 255, 255, 255), border: Borders.primaryBorder);
  static BoxDecoration titleContainerDeco = BoxDecoration(
    color: Color.fromARGB(0, 255, 255, 255),
  );

  static BoxDecoration controlsContainerDeco = BoxDecoration(
    color: AppColors.controlPanelColor,
  );

  static BoxDecoration specialControlsContainerDeco = BoxDecoration(
    color: AppColors.specialControlPanelColor,
  );
}
