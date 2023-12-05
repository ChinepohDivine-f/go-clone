import "package:flutter/material.dart";

class HomeCategoryBox extends StatelessWidget {
  const HomeCategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: CategoryContainer(),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        // scrollDirection:Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            // height: 200,
              decoration: customBoxDecoration(),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.school, size: 60, color: Colors.blue),
                    SizedBox(height: 5,),
                    Text(
                      "Academic Structure",
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                    // SizedBox(height: 24,)
                  ],
                ),
              ));
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 132.5,
        ),
      ),
    );

    // Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Icon(
    //           Icons.school,
    //           color: Colors.blue,
    //           size: 40,
    //         ),
    //         SizedBox(
    //           height: 2,
    //         ),
    //         Text(
    //           "Academic Structure",
    //           style: TextStyle(fontSize: 12, color: Colors.blue),
    //         ),
    //         SizedBox(
    //           height: 10,
    //         ),
    //       ]),

    // return Flex(
    //   direction:Axis.horizontal,
    //   children: [Container(
    //     // margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    //       height: 95,
    //       decoration: const BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.all(Radius.circular(5))),
    //       child: const Padding(
    //         padding: EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Icon(
    //               Icons.school,
    //               color: Colors.blue,
    //               size: 40,
    //             ),
    //             SizedBox(
    //               height: 2,
    //             ),
    //             Text(
    //               "Academic Structure",
    //               style: TextStyle(fontSize: 12, color: Colors.blue),
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //           ],
    //         ),
    //       )),]
    // );
  }

  BoxDecoration customBoxDecoration() {
    return BoxDecoration(
                color: Colors.white,
                
                boxShadow: [
                  BoxShadow(
                      color: Colors.white38.withOpacity(0.6),
                      blurRadius: 7.0,
                      spreadRadius: 1,
                      // blurStyle: BlurStyle.normal,
                      offset: const Offset(-4, -5)
                  ),
                  BoxShadow(
                    color: Colors.blue.shade200.withOpacity(0.1),
                    blurRadius: 7.0,
                    spreadRadius: 1,
                    offset: const Offset(4, 5)
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(5)));
  }
}
