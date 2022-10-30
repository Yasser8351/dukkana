import 'package:dokana/widgets/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../app_config/app_image.dart';
import '../model/category_model.dart';
import 'shared_widgets/card_decoration.dart';

class ListDiscountssWidget extends StatelessWidget {
  const ListDiscountssWidget({
    Key? key,
    required this.categoryModel,
    required this.colorScheme,
    required this.size,
  }) : super(key: key);
  final CategoryModel categoryModel;
  final ColorScheme colorScheme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImage.discount1,
              height: 220,
              width: 280,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
