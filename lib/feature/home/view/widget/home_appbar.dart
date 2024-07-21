part of '../home_view.dart';

class _HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppEnviroment.appTitle),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); //?
}
