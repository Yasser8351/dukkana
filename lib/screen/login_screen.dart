import 'package:dokana/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../app_config/app_config.dart';
import '../utilits/helper.dart';
import '../widgets/shared_widgets/button_widget.dart';
import '../widgets/shared_widgets/text_faild_widget.dart';
import '../widgets/shared_widgets/text_widget.dart';
import 'tab_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // late SimpleFontelicoProgressDialog _dialog;
  bool isLoading = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();

    // _dialog = SimpleFontelicoProgressDialog(
    //   context: context,
    //   barrierDimisable: true,
    // );
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: colorScheme.primary,
      //   leading: const SizedBox(),
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          color: colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: colors),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 35,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      // backgroundImage: const AssetImage(
                      //  AppImage.logo,
                      // ),
                      child: const Text(
                        "Logo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFaildWidget(
                        controller: _emailController,
                        label: AppConfig.email,
                        obscure: false,
                        icon: IconButton(
                          onPressed: () {
                            // clearText(_emailController);
                          },
                          icon: const Icon(Icons.close),
                        ),
                        inputType: TextInputType.emailAddress),
                    SizedBox(height: size.height * .05),
                    TextFaildWidget(
                        controller: _passwordController,
                        label: AppConfig.password,
                        icon: IconButton(
                            onPressed: () {
                              showHidePassword();
                            },
                            icon: Icon(
                              _obscureText
                                  ? Icons.remove_red_eye
                                  : Icons.remove_done_rounded,
                            )),
                        obscure: _obscureText,
                        inputType: TextInputType.text),
                    SizedBox(height: size.height * .1),
                    isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ButtonWidget(
                            title: AppConfig.login,
                            color: colorScheme.primary,
                            onTap: () {},
                            /*  
                            onTap: () async {
                              // validateData();

                              if (_emailController.text.isEmpty ||
                                  _passwordController.text.isEmpty) {
                                Helper.showError(
                                    context: context,
                                    subtitle: "جميع الحقول مطلوبة");
                                return;
                              }

                              setState(() => isLoading = true);
                              UserAuth userAuth = UserAuth();
                              bool isSignup = await userAuth.userSignIn(
                                context,
                                _emailController.text,
                                _passwordController.text,
                              );
                              setState(() => isLoading = false);

                              // _dialog.hide();
                              if (isSignup) {
                                /// userSignup sucssufuly

                                // ignore: use_build_context_synchronously
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const TabScreen())));
                              } else {
                                /// userSignup faild try again later

                              }
                            },
                         */
                          ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.of(context)
                            .pushNamed(AppConfig.forgetPassword),
                        child: TextWidget(
                            title: AppConfig.forgetPassword,
                            fontSize: 15,
                            color: colorScheme.primary),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen())),
                        // onTap: () =>
                        //     Navigator.of(context).pushNamed(AppConfig.signUp),
                        child: TextWidget(
                            title: AppConfig.signUp,
                            fontSize: 15,
                            color: colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(String message) async {
    // _dialog.show(
    //   message: AppConfig.loading,
    //   indicatorColor: Theme.of(context).colorScheme.primary,
    // );
  }

  void validateData() {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      // Helper.showError(context: context, subtitle: "جميع الحقول مطلوبة");
      return;
    }
  }

  void showHidePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
