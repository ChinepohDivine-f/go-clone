import "package:flutter/material.dart";

class StudentContainer extends StatelessWidget {
  const StudentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            )),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(70)),
                child: Image.asset("assets/images/chinepoh.png", height: 75,)),
                const SizedBox(width: 5,),
            const IntrinsicWidth(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntrinsicWidth(
                      child: Column(
                        children: [ Text("CHINEPOH DIVINE-FAVOUR", style: TextStyle(fontSize: 12,  color: Colors.blue)),Text("FE21A159", style: TextStyle(fontSize: 11, color: Colors.blue)),
                      Text("B.ENG COMPUTER ENGINEERING", style: TextStyle(fontSize: 10,  color: Colors.blue)),
                  ]
    )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("2023/2024", style: TextStyle(fontSize: 10, color: Colors.black54)),
                        SizedBox(width: 35,),
                        Text("First Semester", style: TextStyle(fontSize: 10, color: Colors.black54))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}


// Container(
            //   padding: const EdgeInsets.all(15),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(3),
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.black.withOpacity(0.1),
            //           spreadRadius: 1,
            //           blurRadius: 1,
            //           offset: const Offset(0, 1), // changes position of shadow
            //         )
            //       ]),
            //   child: ListTile(
            //     leading: ClipRRect(
            //       borderRadius: BorderRadius.circular(50.0),
            //       clipBehavior: Clip.antiAlias,
            //       child: Container(
            //         margin: const EdgeInsets.all(0),
            //         height: 50,
            //         width: 50,
            //         child: Image(image: AssetImage("assets/images/chinepoh.png"), height: 60,),
            //         decoration:
            //             const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            //       ),
            //     ),
            //     title: const Text("CHINEPOH DIVINE-FAVOUR", style: TextStyle(fontSize: 12, ),),
            //     subtitle: RichText(text: TextSpan()),
            //   ),
            // ),