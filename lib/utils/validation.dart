class Validation {
  isValid(String string) {
    return string != null &&
        string != "" &&
        string != "null" &&
        string.trim().length > 0;
  }

  isValidList(List list) {
    return list != null && list.length > 0;
  }

  bool isValidNumber(String strValue) {
    if (!isValid(strValue)) return false;
    double number = 0.0;
    try {
      number = double.parse(strValue);
    } catch (e) {
      return false;
    }
    return true;
  }
}
