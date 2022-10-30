import 'package:dokana/app_config/app_image.dart';
import 'package:dokana/model/category_model.dart';
import 'package:dokana/widgets/list_discount_widget.dart';
import 'package:flutter/material.dart';
import '../app_config/app_config.dart';
import '../model/products_model.dart';
import '../widgets/list_categorys_widget.dart';
import '../widgets/list_products_widget.dart';
import '../widgets/shared_widgets/row_two_with_text.dart';
import '../widgets/sized_books_space.dart';
import '../widgets/text_faild_search_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textSearchController = TextEditingController();
    final size = MediaQuery.of(context).size;

    var listCategorys = [
      CategoryModel(title: 'فواكة', image: AppImage.c1),
      CategoryModel(title: 'خضار', image: AppImage.c2),
      CategoryModel(title: 'لحمة', image: AppImage.c3),
    ];
    var listProducts = [
      ProductsModel(title: 'صلصة الفراشة', image: AppImage.food1),
      ProductsModel(title: 'شاي الغزالتين', image: AppImage.food2),
      ProductsModel(title: 'لبن كابو', image: AppImage.food3),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VerticalSpaceRegular,
            buldHeaderAndSearch(textSearchController),
            // Container(
            //   height: size.height,
            //   decoration: const BoxDecoration(
            //     color: Colors.white70,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(25),
            //         topRight: Radius.circular(25)),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  RowWithTwoText(
                    title: AppConfig.category,
                    description: AppConfig.seeAll,
                    colorScheme: Colors.black,
                    colorScheme2: Colors.green,
                    onTap: (() => (() {})),
                  ),
                  //List category
                  SizedBox(
                    height: size.height * .2,
                    width: double.infinity,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 18),
                      scrollDirection: Axis.horizontal,
                      itemCount: listCategorys.length,
                      itemBuilder: (context, index) {
                        return ListCategorysWidget(
                          categoryModel: listCategorys[index],
                          colorScheme: ColorScheme.dark(),
                          size: size,
                        );
                      },
                    ),
                  ),

                  // list Discounts products
                  SizedBox(
                    height: size.height * .3,
                    width: double.infinity,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 18),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListDiscountssWidget(
                          categoryModel: listCategorys[index],
                          colorScheme: ColorScheme.dark(),
                          size: size,
                        );
                      },
                    ),
                  ),

                  //popular deals products

                  RowWithTwoText(
                    title: AppConfig.popularDeals,
                    description: AppConfig.seeAll,
                    colorScheme: Colors.black,
                    colorScheme2: Colors.green,
                    onTap: (() => (() {})),
                  ),
                  SizedBox(
                    height: size.height * .2,
                    width: double.infinity,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 18),
                      scrollDirection: Axis.horizontal,
                      itemCount: listProducts.length,
                      itemBuilder: (context, index) {
                        return ListProductsWidget(
                          productsModel: listProducts[index],
                          colorScheme: ColorScheme.dark(),
                          size: size,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buldHeaderAndSearch(TextEditingController textSearchController) {
  return Container(
    // color: Colors.green,
    decoration: const BoxDecoration(
      color: Colors.green,
      // color: Color(0xff27AE60),
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        VerticalSpaceLarge,
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: const Text(
            "مرحبا \n اشتري حاجات البيت من دكانا",
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        VerticalSpaceRegular,
        TextFaildSearchWidget(
          textSearchController: textSearchController,
          onTap: () {},
          onTapSearch: () {},
        ),
        VerticalSpaceLarge,
      ],
    ),
  );
}
