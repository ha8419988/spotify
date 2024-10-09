import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/presentation/choose_mode/auth/pages/signin.dart';

import '../../../common/helpers/dialog/dialog_common.dart';
import '../../../common/widget/appbar/app_bar.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        backgroundColor:
            context.isDarkMode ? const Color(0xff2C2B2B) : Colors.white,
        title: const Text('Menu'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          width: double.infinity,
          child: Column(children: [
            _itemMenu(
                Icon(
                  Icons.info_outline,
                  size: 24,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                ),
                'Privacy', () {
              // context.push(PrivacyView.router);
            }, context),
            _itemMenu(
                Icon(Icons.person_outline,
                    size: 24,
                    color: context.isDarkMode ? Colors.white : Colors.black),
                'Logout', () {
              DialogCommon.showAlertLogoutDialog(
                  context: context,
                  onTapRight: () {
                    Future.delayed(const Duration(milliseconds: 500), () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushAndRemoveUntil(
                          context!,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SigninPage(
                                    hideBack: true,
                                  )),
                          (Route<dynamic> route) => false);
                    });
                  });
            }, context),
          ])),
    );
  }
}

// Future<void> _launchUrl(String url) async {
//   if (await canLaunchUrl(Uri.parse(url))) {
//     await launchUrl(Uri.parse(url));
//   } else {
//     throw 'Could not launch $url';
//   }
// }

Widget _itemMenu(
    Widget icon, String label, Function()? onTap, BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 18),
            height: 63,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon,
                const SizedBox(
                  width: 18,
                ),
                Text(label,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: context.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 16)),
              ],
            ),
          ),
          Divider(
            color: context.isDarkMode ? Colors.white : Colors.black,
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    ),
  );
}
