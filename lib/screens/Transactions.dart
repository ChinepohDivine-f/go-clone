import "package:app1/screens/widgets/bottom-nav.dart";
import "package:flutter/material.dart";

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => TransactionsState();
}

class TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: BottomNav(),
        appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: const Text("Payment Transactions",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(3)),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        label: Text("SCHOOL FEE PAYMENTS"),
                        style: ButtonStyle(color: Colors.transparent),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
