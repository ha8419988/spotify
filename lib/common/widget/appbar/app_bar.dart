import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppbar(
      {super.key,
      this.title,
      this.hideBack = false,
      this.action,
      this.backgroundColor});
  final Widget? title;
  final bool hideBack;
  final Widget? action;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title ?? const Text(''),
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      actions: [action ?? Container()],
      leading: hideBack
          ? null
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: context.isDarkMode
                          ? Colors.white.withOpacity(0.03)
                          : Colors.black.withOpacity(0.04),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                    color: context.isDarkMode ? Colors.white : Colors.black,
                  ))),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
