import 'package:architecture_template_v2/core/extensions/context_extension.dart';
import 'package:architecture_template_v2/feature/users/users_list_state.dart';
import 'package:architecture_template_v2/feature/users/users_list_cubit.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/gen.dart';

@RoutePage()
class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersListCubit(),
      child: BlocBuilder<UsersListCubit, UsersListState>(
        builder: (context, state) => state.isLoading == false
            ? const LinearProgressIndicator()
            : Scaffold(
                appBar: AppBar(),
                body: const Column(
                  children: [
                    _UserList(),
                  ],
                ),
              ),
      ),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersListCubit, UsersListState, List<User>>(
        selector: (state) {
      return state.userList ?? [];
    }, builder: (context, state) {
      if (state.isEmpty) {
        return Container(
          color: Colors.amber,
        );
      }
      return SizedBox(
        height: context.dynamicHeight(0.5),
        child: ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            return Text(state[index].name ?? '');
          },
        ),
      );
    });
  }
}
