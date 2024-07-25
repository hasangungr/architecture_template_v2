import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class UsersListState extends Equatable {
  final bool isLoading;
  final List<User>? userList;

  const UsersListState({required this.isLoading, this.userList});

  @override
  List<Object?> get props => [isLoading, userList];

  UsersListState copyWith({bool? isLoading, List<User>? userList}) {
    return UsersListState(
        isLoading: isLoading ?? false, userList: userList ?? this.userList);
  }
}
