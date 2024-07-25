import 'package:architecture_template_v2/feature/users/users_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

import '../../product/service/dio_service.dart';
import '../../product/service/service_path.dart';

final class UsersListCubit extends Cubit<UsersListState> {
  UsersListCubit()
      : super(const UsersListState(isLoading: false, userList: [])) {
    fetchUsers();
  }

  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> fetchUsers() async {
    emit(
      state.copyWith(
        userList: await DioService.instance!.fetchData(
          ServicePath.user.rawValue,
          const User(),
        ),
      ),
    );
    if (state.userList != null || state.userList != []) {
      changeLoading();
    }
  }
}
