import "package:flutter/material.dart";

class HomeCategoryBox extends StatelessWidget {
  const HomeCategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 3.0,
                        blurStyle: BlurStyle.normal,
                        offset: const Offset(-4, -5)
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 3.0,
                      offset: const Offset(1, 4)
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Icon(Icons.school, size: 60, color: Colors.blue),
                    Text(
                      "Academic Structure",
                      style: TextStyle(fontSize: 11, color: Colors.blue),
                    )
                  ],
                ),
              ));
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 120.0,
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
}
