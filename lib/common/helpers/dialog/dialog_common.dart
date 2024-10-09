import 'package:flutter/material.dart';

class DialogCommon {
  static Future<void> showAlertLogoutDialog({
    required BuildContext context,
    required Function()? onTapRight,
  }) async {
    showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              insetPadding: const EdgeInsets.all(0.0),
              actionsPadding: const EdgeInsets.only(bottom: 34, right: 30),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Text(
                        'Cancel',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop;
                        onTapRight!();
                      },
                      child: Text('Confirm',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black)),
                    ),
                  ],
                )
              ],
              shadowColor: Colors.black.withOpacity(0.5),
              content: Container(
                padding: const EdgeInsets.only(top: 24, bottom: 20),
                width: double.infinity,
                child: Text(
                  'Do you want to logout ?',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
            ));
  }
}
