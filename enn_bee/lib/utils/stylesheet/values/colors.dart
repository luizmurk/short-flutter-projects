part of values;

class AppColors {
  static late Color primaryColor;
  static late Color secondaryColor;
  static late Color grey;
  static late Enum mode;

  AppColors() {
    print("your AppsColor has been initialized to ${mode}");
  }

  static init(Enum themeMode) {
    mode = themeMode;
    if (mode == Mode.dark) {
      primaryColor = DarkModeColors.primaryColor;
      secondaryColor = DarkModeColors.secondaryColor;
      grey = DarkModeColors.grey;
    } else {
      primaryColor = LightModeColors.primaryColor;
      secondaryColor = LightModeColors.secondaryColor;
      grey = LightModeColors.grey;
    }
  }
}

class LightModeColors {
  static const Color primaryColor = Color.fromARGB(255, 149, 154, 206);
  static const Color secondaryColor = Color.fromARGB(255, 246, 247, 255);
  static const Color grey = Color(0xFFA1A1A1);
}

class DarkModeColors {
  static const Color primaryColor = Color.fromARGB(255, 5, 8, 46);
  static const Color secondaryColor = Color.fromARGB(255, 246, 247, 255);
  static const Color grey = Color(0xFFA1A1A1);
}

enum Mode {
  light,
  dark,
}
