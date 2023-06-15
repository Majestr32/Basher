import 'package:allxclusive/core/error/failure.dart';

abstract class ChangePasswordRepository{
  Future<Failure?> changePassword({required String oldPassword, required String newPassword});
}