import "package:app1/screens/widgets/bottom-nav.dart";
import "package:flutter/material.dart";

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
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: null,
          title: Text("Student Profile", style: TextStyle(fontSize: 16)),
        ),
        bottomNavigationBar: BottomNav(),
        body: Text("Student profile")
      ),
    );
  }
}