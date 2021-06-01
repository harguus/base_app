class Auth {
  bool Login(String email, String password) {
    if (email == "" && password == "") {
      print(false);
      return false;
    } else {
      print(true);
      return true;
    }
  }

  bool Logout() {
    return true;
  }
}
