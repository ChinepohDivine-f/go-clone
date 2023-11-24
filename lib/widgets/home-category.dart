import "package:flutter/material.dart";

class HomeCategoryBox extends StatelessWidget {
  const HomeCategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[CategoryContainer(), CategoryContainer()],
          ),
        ),
        // Row(children: [],),
        // Row(children: [],),
      ]),
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
      width: 100,
      height: 320,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index){
            return Container(
              // height: 40,
              // width: 40,
              color: Colors.blue,
            );
        }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 25.0,
            
          
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
