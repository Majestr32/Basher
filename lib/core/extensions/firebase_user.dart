import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

extension IsEmailAndPasswordProviderExtension on User{
  bool get isEmailAndPasswordSignedIn => providerData.map((e) => e.providerId).contains('password');
}