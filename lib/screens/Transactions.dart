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
        bottomNavigationBar: const BottomNav(),
        appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: const Text("Payment Transactions",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
        body: const Column(
          children: [
           TransactionContainer(transaction_: 'SCHOOL FEE PAYMENTS',),
           TransactionContainer(transaction_: 'MEDICAL FEE PAYMENTS',),
           TransactionContainer(transaction_: 'PLATFORM SERVICE CHARGES',),
          ],
        ));
  }
}

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({
    super.key, required this.transaction_, 
  });

  
  final String transaction_;
  // final void t_operation();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            boxShadow:List.filled(3, const BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10)),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                  decoration: BoxDecoration(
                    boxShadow:List.filled(3, BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10)),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    children: [
                      // TextButton.icon(
                      //   style:const  ButtonStyle(
                      //     textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.black)),
                      //     backgroundColor:MaterialStatePropertyAll(Color.fromARGB(0, 17, 90, 224)), 
                      //     foregroundColor:MaterialStatePropertyAll(Color.fromARGB(0, 0, 0, 0)), 
                      //   // foregroundColor: Colors.black,
                      //   ),
                      //   onPressed: (){}, icon: Icon(Icons.arrow_forward), label:  
                      // Text(transaction_,
                      //     style: const TextStyle(
                      //         color: Colors.white, fontSize: 12),),
                  
                      // ),
                      IconButton(
                          onPressed: () {},
                          selectedIcon: const Icon(Icons.arrow_downward),
                          icon: const  Icon(Icons.arrow_forward,
                              color: Colors.white, size: 20)),
                      Text(transaction_,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),),
                    ],
                  )),
            ),
            
          ],
        ),
      ),
    );
  }
}
