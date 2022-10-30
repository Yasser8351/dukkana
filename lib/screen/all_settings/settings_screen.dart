import 'package:dokana/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_config/app_config.dart';
import '../../sharedpref/user_share_pref.dart';
import '../../widgets/shared_widgets/text_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildCardItem(
                  context,
                  AppConfig.contactUs,
                  CupertinoIcons.chevron_left_slash_chevron_right,
                  () => Navigator.of(context).pushNamed(AppConfig.contactUs)),
              buildDivider(),
              buildCardItem(context, AppConfig.aboutUs, CupertinoIcons.info,
                  () => Navigator.of(context).pushNamed(AppConfig.aboutUs)),
              buildDivider(),
              buildCardItem(
                  context,
                  AppConfig.sudannaProject,
                  CupertinoIcons.person_2_square_stack,
                  () => Navigator.of(context)
                      .pushNamed(AppConfig.sudannaProject)),
              buildDivider(),
              buildCardItem(
                  context,
                  AppConfig.privacyPolicy,
                  Icons.security,
                  () =>
                      Navigator.of(context).pushNamed(AppConfig.privacyPolicy)),
              buildDivider(),
              /* 
              buildCardItem(
                  context,
                  AppConfig.home,
                  Icons.notifications_outlined,
                  () => Navigator.of(context).pushNamed(AppConfig.home)),
              buildDivider(),
              buildCardItem(context, AppConfig.home, Icons.content_paste_go,
                  () => Navigator.of(context).pushNamed(AppConfig.home)),
              buildDivider(),
              buildCardItem(context, AppConfig.home, Icons.content_paste_go,
                  () => Navigator.of(context).pushNamed(AppConfig.home)),
              buildDivider(),
              buildCardItem(
                  context,
                  AppConfig.termsOfServices,
                  Icons.front_hand_outlined,
                  () => Navigator.of(context)
                      .pushNamed(AppConfig.termsOfServices)),
              buildDivider(),
              buildCardItem(
                context,
                AppConfig.language,
                Icons.change_circle_outlined,
                () => {Navigator.of(context).pushNamed(AppConfig.language)},
              ),
              buildDivider(),
              buildCardItem(
                context,
                AppConfig.faq,
                Icons.note_alt_outlined,
                () => {Navigator.of(context).pushNamed(AppConfig.faq)},
              ),
              buildDivider(),
              buildCardItem(
                context,
                AppConfig.support,
                Icons.support_agent_rounded,
                () => {Navigator.of(context).pushNamed(AppConfig.support)},
              ),
              buildDivider(),
              
              // buildCardItem(
              //   context,
              //   AppConfig.privacyPolicy,
              //   Icons.security,
              //   () =>
              //       {Navigator.of(context).pushNamed(AppConfig.privacyPolicy)},
              // ),
              // buildDivider(),
              // buildCardItem(
              //     context,
              //     AppConfig.privacyPolicy,
              //     Icons.security,
              //     () =>
              //         Navigator.of(context).pushNamed(AppConfig.privacyPolicy),
              //     true),
              // buildDivider(),
              */
              buildCardItem(context, AppConfig.logout, Icons.logout,
                  () => logout(context), true),
              buildDivider(),
              const SizedBox(height: 20),
              TextWidget(
                  title: AppConfig.version,
                  fontSize: 18,
                  color: Colors.black45),
            ],
          ),
        ),
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: TextWidget(
            title: AppConfig.settings, fontSize: 18, color: Colors.white),
      ),
    );
  }

  buildDivider() {
    return const Divider(
      height: 10,
    );
  }

  buildCardItem(
      BuildContext context, String title, IconData icons, Function() onTap,
      [bool isColorRed = false]) {
    return GestureDetector(
      onTap: () => onTap(),
      child: ListTile(
        trailing: Icon(
          icons,
          color: isColorRed ? Colors.red : Colors.green,
        ),
        title: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextWidget(
                title: title,
                fontSize: 16,
                color: isColorRed ? Colors.red : Colors.black45),
          ),
        ),
        leading: Icon(
          Icons.navigate_before,
          size: 30,
          color: Colors.green,
        ),
      ),
    );
  }

  logout(context) async {
    // SharedPrefUser sharedPrefUser = SharedPrefUser();
    // await sharedPrefUser.logout();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
    // Navigator.of(context).pushNamed(AppConfig.login);
  }
}
