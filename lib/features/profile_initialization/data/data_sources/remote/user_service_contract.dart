
import '../../../../../shared/domain/entities/user/user.dart';

abstract class UserService{
  Future<User?> getUserById({required String uid});
  Future<User> saveUser({required User user});
  Future<User> editUser({required User user, String? imgToUpdate});
  Future<void> setUserMode({required String uid, required Role role});
}