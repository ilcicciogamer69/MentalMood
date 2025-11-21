class SettingsUtil {
  String cronologiaIntToString(int value) {
    switch (value) {
      case 1:
        return "MAI";
      case 2:
        return "30 giorni";
      case 3:
        return "60 giorni";
      case 4:
        return "90 giorni";
      default:
        return "90 giorni";
    }
  }

  int cronologiaStringToInt(String label) {
    switch (label) {
      case "MAI":
        return 1;
      case "30 giorni":
        return 2;
      case "60 giorni":
        return 3;
      case "90 giorni":
        return 4;
      default:
        return 4;
    }
  }

  String notificaBoolToString(bool value) {
    switch (value) {
      case true:
        return "SI";
      case false:
        return "NO";
      default:
        return "SI";
    }
  }

  bool notificaStringToBool(String label) {
    switch (label) {
      case "SI":
        return true;
      case "NO":
        return false;
      default:
        return true;
    }
  }
}