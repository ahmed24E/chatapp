bool validateEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool validatPassword(String password) {
  return RegExp(r'^(?=.*?[a-z])(?=.*?[0-9])')
      .hasMatch(password);
}