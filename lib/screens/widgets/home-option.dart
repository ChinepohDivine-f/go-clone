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
          const Options(
              title_: 'Notification',
              subtitle_: 'Browse latest annoncements',
              icon_: Icons.notifications),
          Divider(
            color: Colors.grey[300],
            indent: 53.0,
            thickness: 1,
            height: 0.15,
          ),
          const Options(
              title_: 'Account Settings',
              subtitle_: 'Update account Profile',
              icon_: Icons.edit),
          Divider(
            color: Colors.grey[300],
            indent: 53.0,
            thickness: 1,
            height: 0.15,
          ),
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
}

class Options extends StatelessWidget {
  const Options({
    super.key,
    this.icon_,
    required this.title_,
    required this.subtitle_,
  });

  final icon_;
  final String title_;
  final String subtitle_;
  // void Function? executeOpt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon_, size: 18),
          title: Text(title_,
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          subtitle: Text(subtitle_,
              style: const TextStyle(
                fontSize: 11,
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
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ],
    );
  }
}
