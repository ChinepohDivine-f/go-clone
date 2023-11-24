import "package:app1/screens/widgets/bottom-nav.dart";
import "package:flutter/material.dart";

class Annoncement extends StatefulWidget {
  const Annoncement({super.key});

  @override
  State<Annoncement> createState() => _AnnoncementState();
}

class _AnnoncementState extends State<Annoncement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNav(),
        appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            leading: BackButton(
              style: ButtonStyle(
                  visualDensity: VisualDensity.adaptivePlatformDensity),
            ),
            title: const Text("Announcements/Notifications",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Column(
          children: [
           
            newMethod(),
            const SizedBox()

          ],
        )));
  }

  Container newMethod() {
    return Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            height: 40,
            decoration: const BoxDecoration(color: Colors.blueGrey),
            child: Text("General Notice(s)", style: TextStyle(color: Colors.white, fontSize: 15))
          );
  }
}
