part of values;

class AppColors {
  static late Color primaryColor;
  static late Color screenBackgroundColor;
  static late Color textColor;
  static late Color numberPanelColor;
  static late Color controlPanelColor;
  static late Color specialControlPanelColor;
  static late Enum mode;

  AppColors() {
    print("your AppsColor has been initialized to $mode");
  }

  static init(Enum themeMode) {
    mode = themeMode;
    if (mode == Mode.dark) {
      primaryColor = DarkModeColors.primaryColor;
      screenBackgroundColor = DarkModeColors.screenBackgroundColor;
      textColor = DarkModeColors.textColor;
      numberPanelColor = DarkModeColors.numberPanelColor;
      primaryColor = DarkModeColors.primaryColor;
      primaryColor = DarkModeColors.primaryColor;
    } else {
      primaryColor = LightModeColors.primaryColor;
      screenBackgroundColor = LightModeColors.screenBackgroundColor;
      textColor = LightModeColors.textColor;
      numberPanelColor = LightModeColors.numberPanelColor;
      controlPanelColor = LightModeColors.controlPanelColor;
      specialControlPanelColor = LightModeColors.specialControlPanelColor;
    }
  }
}

class LightModeColors {
  static const Color primaryColor = Color(0xFFE2E3F7);

  // Calculator Light Color Theme
  static const Color screenBackgroundColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF000000);
  static const Color numberPanelColor = Color(0xFFFFFFFF);
  static const Color controlPanelColor = Color(0xFFECCFAC);
  static const Color specialControlPanelColor = Color(0xFFF3F3F3);
}

class DarkModeColors {
  static const Color primaryColor = Color(0xFF05082E);

  // Calculator Dark Color Theme
  static const Color screenBackgroundColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF000000);
  static const Color numberPanelColor = Color(0xFFFFFFFF);
  static const Color controlPanelColor = Color(0xFFECCFAC);
  static const Color specialControlPanelColor = Color(0xFFF3F3F3);
}

enum Mode {
  light,
  dark,
}
