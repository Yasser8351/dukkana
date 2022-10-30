import 'package:dokana/model/products_model.dart';
import 'package:dokana/widgets/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'shared_widgets/card_decoration.dart';

class ListProductsWidget extends StatelessWidget {
  const ListProductsWidget({
    Key? key,
    required this.productsModel,
    required this.colorScheme,
    required this.size,
  }) : super(key: key);
  final ProductsModel productsModel;
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
            Container(
              decoration: BoxDecoration(
                color: Color(0xffE9F7EF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    productsModel.image,
                    height: 80,
                    width: 80,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: TextWidget(
                  title: productsModel.title,
                  fontSize: 16,
                  color: colorScheme.onSecondary),
            )
          ],
        ),
      ),
    );
  }
}
