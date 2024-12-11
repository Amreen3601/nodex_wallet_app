class Validation {
  // Email text field validation
  static emailValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Email";
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return "Please enter valid email";
    }

    return null;
  }

  static passwordValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Password";
    } else if (value.length < 8) {
      return "Password At least 8 Characters";
    }
  }
}
