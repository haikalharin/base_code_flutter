import 'package:base_mvvm/common/cubit/generic_cubit.dart';
import 'package:base_mvvm/data/model/user/user.dart';
import 'package:base_mvvm/repository/user/user_repository.dart';

class UserCubit extends GenericCubit<User> {
  final UserRepository userRepository;

  UserCubit({required this.userRepository});

  Future<void> getUserList({
    Gender gender = Gender.all,
    UserStatus status = UserStatus.all,
  }) async {
    getItems(userRepository.getUsers(status: status, gender: gender));
  }

  Future<void> createUser(User user) async {
    createItem(userRepository.createUser(user));
  }

  Future<void> updateUser(User user) async {
    updateItem(userRepository.updateUser(user));
  }

  Future<void> deleteUser(User user) async {
    deleteItem(userRepository.deleteUser(user));
  }
}
