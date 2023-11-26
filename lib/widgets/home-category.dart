import "package:flutter/material.dart";

class HomeCategoryBox extends StatelessWidget {
  const HomeCategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            // width: double.infinity,
            color: Colors.blue,
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
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
