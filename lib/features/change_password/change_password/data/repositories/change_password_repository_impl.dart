import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/change_password/change_password/data/data_sources/remote/change_password_service_contract.dart';
import 'package:allxclusive/features/change_password/change_password/domain/repositories/change_password_repository_contract.dart';

class ChangePasswordRepositoryImpl implements ChangePasswordRepository{
  final ChangePasswordService _changePasswordService;

  @override
  Future<Failure?> changePassword({required String oldPassword, required String newPassword}) async{
    try{
      await _changePasswordService.changePassword(oldPassword: oldPassword, newPassword: newPassword);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  const ChangePasswordRepositoryImpl({
    required ChangePasswordService changePasswordService,
  }) : _changePasswordService = changePasswordService;
}