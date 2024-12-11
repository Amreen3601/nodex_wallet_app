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

  // Password text field validation
  static passwordValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Password";
    } else if (value.length < 8) {
      return "Password At least 8 Characters";
    }
    return null;
  }

  // Phone text field validation
  static phoneValidation(value) {
    String pattern = r'^(?:[+0][1-9])?[0-9]{11}$';
    RegExp regExp = RegExp(pattern);

    if (value.isEmpty) {
      return "Enter Your Phone Number";
    } else if (!regExp.hasMatch(value)) {
      return "Enter Valid Phone Number";
    }
    return null;
  }

  // Name text field validation
  static nameValidation(value) {
    if (value.isEmpty) {
      return "Enter Your Name";
    } else if (value.length < 2) {
      return "Name must be at least 2 characters";
    } else if (!RegExp(r"^[a-zA-Z ]+$").hasMatch(value)) {
      return "Name should contain only alphabets and spaces";
    }
    return null;
  }

   // Confirm password validation
  static confirmPasswordValidation(String confirmPassword, String password) {
    if (confirmPassword.isEmpty) {
      return "Confirm your password";
    } else if (confirmPassword != password) {
      return "Passwords do not match";
    }
    return null;
  }
}
