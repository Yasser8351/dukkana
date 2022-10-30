import 'package:dokana/widgets/shared_widgets/no_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NoData(
          imageUrlAssets: '',
          textMessage: "لا توجد منتجات في عربة التسوق",
          onTap: () {}),
    );
  }
}
