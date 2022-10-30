import 'package:flutter/material.dart';

import '../app_config/app_config.dart';

class TextFaildSearchWidget extends StatefulWidget {
  const TextFaildSearchWidget({
    Key? key,
    required this.textSearchController,
    required this.onTap,
    required this.onTapSearch,
  }) : super(key: key);
  final Function() onTap;
  final Function onTapSearch;
  final TextEditingController textSearchController;

  @override
  State<TextFaildSearchWidget> createState() => _TextFaildSearchWidgetState();
}

class _TextFaildSearchWidgetState extends State<TextFaildSearchWidget> {
  //final Function() clearSearch;
  String textSearch = '';
  bool isClear = false;
  bool isSearch = false;
  //String widget.textSearchController = "";
  // TextEditingController widget.textSearchController = TextEditingController();
  //final Function onSearch;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 50,
              width: size.width / 1.20,
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                      focusColor: Colors.white,
                      colorScheme: const ColorScheme(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        secondary: Colors.white,
                        onSecondary: Colors.white,
                        brightness: Brightness.light,
                        background: Colors.white,
                        onBackground: Colors.white,
                        error: Colors.white,
                        onError: Colors.white,
                        surface: Colors.white,
                        onSurface: Colors.white,
                      ),
                    ),
                    child: TextField(
                      controller: widget.textSearchController,
                      onSubmitted: (String v) {
                        widget.onTapSearch();
                      },
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 31, 30, 30),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear,
                              size: widget.textSearchController.text == ""
                                  ? 0
                                  : 20,
                              color: Colors.black),
                          onPressed: () {
                            setState(() {
                              widget.textSearchController.clear();
                            });
                          },
                        ),
                        prefixIcon: IconButton(
                          alignment: Alignment.topCenter,
                          onPressed: () {
                            widget.onTapSearch();
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: AppConfig.search,
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(8.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  String onSearch() {
    return widget.textSearchController.text;
  }
}
