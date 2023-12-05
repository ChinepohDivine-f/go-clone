import "package:app1/screens/widgets/bottom-nav.dart";
import 'package:app1/widgets/nuemorphic_container.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            leading: null,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Student Profile", style: TextStyle(fontSize: 18)),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    children: [
                      Icon(Icons.refresh),
                      Text("refresh",
                          style: TextStyle(fontSize: 16, color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNav(),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(0.5),
              child: NuemorphicC(Content_child: Text(" I AM KING "),),
            ),
          )),
    );
  }
}
