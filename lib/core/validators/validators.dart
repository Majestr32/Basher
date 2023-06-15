String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return 'Email can`t be empty';
  } else if(!regex.hasMatch(value)) {
    return 'Email is invalid';
  }else {
    return null;
  }
}

String? validatePhoneNumber(String val){
  bool hasMatch = RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$').hasMatch(val);
  return hasMatch ? null : 'Phone number is not valid';
}

String? validatePassword(String? value) {
  String pattern = "^.{6,}";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty) {
    return 'Password can`t be empty';
  } else if(!regex.hasMatch(value)) {
    return 'Password should be more than 6 characters';
  }else {
    return null;
  }
}