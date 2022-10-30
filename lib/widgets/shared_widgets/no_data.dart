import 'package:flutter/material.dart';

import '../../app_config/app_config.dart';
import 'text_widget.dart';

class NoData extends StatelessWidget {
  const NoData({
    Key? key,
    required this.imageUrlAssets,
    required this.textMessage,
    required this.onTap,
    this.isPostScreen = false,
  }) : super(key: key);

  final String imageUrlAssets;
  final String textMessage;
  final bool isPostScreen;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   imageUrlAssets,
            //   height: size.height * .3,
            //   width: size.height * .4,
            // ),
            SizedBox(height: size.height * .03),
            TextWidget(
              title: textMessage,
              fontSize: 20,
              color: Colors.grey,
            ),
            SizedBox(height: size.height * .003),
          ],
        ),
      ),
    );
  }
}
