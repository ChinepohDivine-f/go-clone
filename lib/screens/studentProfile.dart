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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Student Profile", style: TextStyle(fontSize: 16)),
              GestureDetector(
                onTap: (){},
                child: const Row(
                  children: [
                    Icon(Icons.refresh),
                    Text("refresh", style: TextStyle(fontSize: 10, color: Colors.white))
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNav(),
        body: const Text("Student profile")
      ),
    );
  }
}