import 'package:animated_app/data/repositories/users_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserLikedImagesCubit extends Cubit<int> {
  final UsersRepository usersRepository;
  UserLikedImagesCubit({required this.usersRepository}) : super(0);

  Future getUserLikedImagesCount() async {
    final int count = await usersRepository.getCurrentUserLikedImagesCount();
    emit(count);
  }
}
