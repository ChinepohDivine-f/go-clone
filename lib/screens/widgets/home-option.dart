import "package:app1/screens/optionScreens/account-setting.dart";
import "package:app1/screens/optionScreens/announcements.dart";
import "package:flutter/material.dart";

class HomeOptions extends StatelessWidget {
  const HomeOptions({super.key});

  @override

  // void Function? executeOpt;

  Widget build(BuildContext context) {
    return Container(
      // height: ,
      margin: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: [
          GestureDetector(
            child: const Options(
              title_: 'Notification',
              subtitle_: 'Browse latest annoncements',
              icon_: Icons.notifications,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const Announcement()));
            },
          ),
          customDivider(),
          GestureDetector(
            child: const Options(
                title_: 'Account Settings',
                subtitle_: 'Update account Profile',
                icon_: Icons.edit),
                onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AccountSettings()));
            },
          ),
          customDivider(),
          const Options(
              title_: 'UB Support',
              subtitle_: 'Speak to a suppot agent for help',
              icon_: Icons.question_mark_sharp),
          //   const Divider(
          //   color: Colors.transparent,
          //   indent: 53.0,
          //   thickness: 0.5,
          //   height: 0.5,
          // ),
        ],
      ),
    );
  }

  Divider customDivider() {
    return Divider(
          color: Colors.grey[300],
          indent: 53.0,
          thickness: 0.8,
          height: 0.15,
        );
  }
}

class Options extends StatelessWidget {
  const Options({
    super.key,
    this.icon_,
    required this.title_,
    required this.subtitle_,
    // this.optioncallback,
  });

  final icon_;
  final String title_;
  final String subtitle_;
  // final optioncallback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon_, size: 18),
          title: Text(title_,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          subtitle: Text(subtitle_,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
              )),
          trailing: Container(
            height: 20,
            width: 20,
            // padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
                border: Border.all(
                  // outlined border
                  color: Colors.black54,
                )),
            child: const Icon(Icons.arrow_forward_ios,
                size: 10, color: Colors.black),
          ),
          // onTap: () {
          //   optioncallback;
          // },
        ),
      ],
    );
  }
}
