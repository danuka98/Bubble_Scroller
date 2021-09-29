//import 'package:blobs/blobs.dart';
//import 'package:bubble_chart/bubble_chart.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_card_scrollable/bubbleCustom/bubbleNodeClassCustom.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../blobCustom.dart';
//import 'bubbleNodeLeafCustom.dart';
import 'package:horizontal_card_scrollable/bubbleCustom/bubbleChartClassCustom.dart';

class BubbleChartLayout extends StatefulWidget {
  final BubbleNode root;
  final double Function(BubbleNode)? radius;

  BubbleChartLayout({
    required this.root,
    this.radius,
  });

  @override
  _BubbleChartLayoutState createState() => _BubbleChartLayoutState();
}

class _BubbleChartLayoutState extends State<BubbleChartLayout> {
  bool isChecked = false;

  List<int> _selectedIndexList = [];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  List<String> itemList = [
    "Health",
    "Yoga",
    "Reaix",
    "Hydration",
    "Fitness",
    "Reading"
  ];
  List<String>? idList = [
    '4-4-58',
    '5-4-345',
    '5-4-58',
    '5-4-345',
    '5-4-83187',
    '5-4-345',
    '5-6-23663',
    '6-5-66675',
    '5--345',
    '4-4-58',
    '5-4-345',
    '5-4-58',
    '5-4-345',
    '5-4-345',
    '5-4-345',
    '5-4-345',
    '5-4-345',
    '5-4-345',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var bubbles = BubbleChart(
          root: widget.root,
          radius: widget.radius,
          size: Size(constraints.maxWidth, constraints.maxHeight),
        );

        return Stack(
          children: bubbles.nodes.fold([], (result, node) {
            return result
              ..add(
                Positioned(
                  top: node.y! - node.radius!,
                  left: node.x! - node.radius!,
                  width: node.radius! * 3,
                  height: node.radius! * 3,
                  child: Blob.fromID(
                    id: idList,
                    size: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: _selectedIndexList.contains(0) ? true : false,
                          onChanged: (bool? value) {
                            if (_selectedIndexList.contains(0)) {
                              _selectedIndexList.remove(0);
                            } else {
                              _selectedIndexList.add(0);
                            }
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          itemList[0],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // child: ListView.builder(
                  //   itemCount: itemList.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Blob.random(
                  //       size: 150,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Checkbox(
                  //             checkColor: Colors.white,
                  //             fillColor:
                  //                 MaterialStateProperty.resolveWith(getColor),
                  //             value: _selectedIndexList.contains(index)
                  //                 ? true
                  //                 : false,
                  //             onChanged: (bool? value) {
                  //               if (_selectedIndexList.contains(index)) {
                  //                 _selectedIndexList.remove(index);
                  //               } else {
                  //                 _selectedIndexList.add(index);
                  //               }
                  //               setState(() {
                  //                 isChecked = value!;
                  //               });
                  //             },
                  //           ),
                  //           Text(
                  //             itemList[index],
                  //             style: TextStyle(
                  //               fontSize: 15,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),

                  // child: StaggeredGridView.countBuilder(
                  //   scrollDirection: Axis.horizontal,
                  //   crossAxisCount: 7,
                  //   mainAxisSpacing: 3.0,
                  //   primary: false,
                  //   itemCount: itemList.length,
                  //   staggeredTileBuilder: (int index) =>
                  //       new StaggeredTile.extent(
                  //           1, MediaQuery.of(context).size.width / 4),
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Blob.random(
                  //       size: 150,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Checkbox(
                  //             checkColor: Colors.white,
                  //             fillColor:
                  //                 MaterialStateProperty.resolveWith(getColor),
                  //             value: _selectedIndexList.contains(index)
                  //                 ? true
                  //                 : false,
                  //             onChanged: (bool? value) {
                  //               if (_selectedIndexList.contains(index)) {
                  //                 _selectedIndexList.remove(index);
                  //               } else {
                  //                 _selectedIndexList.add(index);
                  //               }
                  //               setState(() {
                  //                 isChecked = value!;
                  //               });
                  //             },
                  //           ),
                  //           Text(
                  //             itemList[index],
                  //             style: TextStyle(
                  //               fontSize: 15,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // ),
                ),
              );
          }),
        );
      },
    );
  }
}
