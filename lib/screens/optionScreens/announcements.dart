import "package:app1/screens/widgets/bottom-nav.dart";
import "package:flutter/material.dart";

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: BackButton(
          style:
              ButtonStyle(visualDensity: VisualDensity.adaptivePlatformDensity),
        ),
        title: const Text(
          "Announcements/Notifications",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GeneralNotice(),
            // const SizedBox(
            //   height: 24,
            // ),
            generalNotification(),
            const SizedBox(
              height: 10,
            ),
            Note(),
          ],
        ),
      ),
    );
  }

  Container Note() {
    return Container(
              decoration: const BoxDecoration(color: Colors.blue),
              width: double.infinity,

              // used to make text responsive an follow the width of the screen
              child: const IntrinsicWidth(
                  child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Text(
                  "You currently have not received any student notification from the university",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                ),
              )));
  }

  Container generalNotification() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                boxShadow:List.filled(3, const BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10, offset: Offset(1, 5))),
                ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal:8.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:10.0),
                    child: Text("RESUMPTION OF LECTURES", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: IntrinsicWidth(child: Text("Welcome to the First Semester. The Student body is called upon to be assiduous in their studies and respect all deadlines related to academic activities for a successful First Semester in the 2023/2024 academic year. Course Registration Deadline: 31/12/2023", style: TextStyle(fontSize: 16),),),
                  ),
                ],
              ),
            ),
          );
  }

  Container GeneralNotice() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      height: 40,
      decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          
            
          ),
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "General Notice(s)",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
