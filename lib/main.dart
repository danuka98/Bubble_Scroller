import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:blobs/blobs.dart';
import 'package:horizontal_card_scrollable/bubbleCustom/bubbleNodeCustom.dart';
import 'bubbleCustom/bubbleChartCustom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ScrollView(),
      home: ScrollDetailsView(),
    );
  }
}

class ScrollDetailsView extends StatelessWidget {
  const ScrollDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      //body: BubbleView(),
      //body: ScrollView(),
      //body: CustomeizeShapes(),
      body: BubbleCreaotor(),
    );
  }
}

class BubbleCreaotor extends StatefulWidget {
  BubbleCreaotor({Key? key}) : super(key: key);

  @override
  _BubbleCreaotorState createState() => _BubbleCreaotorState();
}

class _BubbleCreaotorState extends State<BubbleCreaotor> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: Container(
          // color: Colors.amber,
          height: 500,
          width: 600,
          child: BubbleChartLayout(
            root: root,
          ),
        ),
      ),
    );
  }
}

class BubbleView extends StatefulWidget {
  const BubbleView({Key? key}) : super(key: key);

  @override
  _BubbleViewState createState() => _BubbleViewState();
}

class _BubbleViewState extends State<BubbleView> {
  bool isChecked = false;
  List<int> _selectedIndexList = [];
  int index = 0;

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
  List<double> itemNumberLeft = [
    120,
    220,
    220,
    250,
    220,
    20,
    10,
    120,
    50,
    400,
    500,
    350,
    400
  ];
  List<int> itemNumberRight = [100, 100, 200, 100, 190, 100, 190];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 150),
        height: 320,
        width: 800,
        // color: Colors.redAccent,
        child: Stack(
          children: [
            Positioned(
              left: 120,
              top: 100,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 220,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 100,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 220,
              top: 200,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 100,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 10,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 120,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 190,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 400,
              top: 100,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 500,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 350,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              left: 400,
              top: 190,
              child: Blob.random(
                size: 120,
                child: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScrollView extends StatefulWidget {
  const ScrollView({Key? key}) : super(key: key);

  @override
  _ScrollViewState createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollView> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StaggeredGridView.countBuilder(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 7,
        mainAxisSpacing: 3.0,
        primary: false,
        itemCount: itemList.length,
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.extent(1, MediaQuery.of(context).size.width / 4),
        itemBuilder: (BuildContext context, int index) {
          return Blob.fromID(
            id: ['6-3-77', '5-2-77', '6-4-77', '5-4-77', '3-4-77'],
            size: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _selectedIndexList.contains(index) ? true : false,
                  onChanged: (bool? value) {
                    if (_selectedIndexList.contains(index)) {
                      _selectedIndexList.remove(index);
                    } else {
                      _selectedIndexList.add(index);
                    }
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  itemList[index],
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
          // return Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //       bottomLeft: Radius.circular(10),
          //       bottomRight: Radius.circular(20),
          //       topRight: Radius.circular(30),
          //       topLeft: Radius.circular(40),
          //     ),
          //     color: Colors.red,
          //   ),
          // );
        },
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(),
    //   //body: WallHrizontal(),
    //   body: CustomeizeShapes(),
    // );
  }
}

class CustomeizeShapes extends StatefulWidget {
  const CustomeizeShapes({Key? key}) : super(key: key);

  @override
  _CustomeizeShapesState createState() => _CustomeizeShapesState();
}

class _CustomeizeShapesState extends State<CustomeizeShapes> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        scrollDirection: Axis.horizontal,
        childAspectRatio: (10 / 1.5) / (12 / 2),
        children: List.generate(21, (index) {
          return Stack(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: Center(
                  child: Blob.random(
                    size: 150,
                    styles: BlobStyles(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 30),
                              child: Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _selectedIndexList.contains(index)
                                    ? true
                                    : false,
                                onChanged: (bool? value) {
                                  if (_selectedIndexList.contains(index)) {
                                    _selectedIndexList.remove(index);
                                  } else {
                                    _selectedIndexList.add(index);
                                  }
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 70, left: 35),
                              child: Text(
                                'Hello',
                                //itemList[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class WallHrizontal extends StatefulWidget {
  const WallHrizontal({Key? key}) : super(key: key);

  @override
  _WallHrizontalState createState() => _WallHrizontalState();
}

class _WallHrizontalState extends State<WallHrizontal>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late bool _reversed;
  late Axis _direction;
  late int _nbLayers;
  late bool _wrapedOptions;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _reversed = false;
    _direction = Axis.horizontal;
    _nbLayers = 4;
    _controller.forward(from: 0);
    _wrapedOptions = true;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).backgroundColor;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      body: buildWallLayout(),
    );
  }

  // Widget _buildOptions(BuildContext context) {
  //   return AnimatedSize(
  //     duration: Duration(milliseconds: 200),
  //     reverseDuration: Duration(milliseconds: 200),
  //     alignment: Alignment.bottomRight,
  //     vsync: this,
  //     child: Container(
  //       margin: EdgeInsets.only(left: 32),
  //       decoration: BoxDecoration(
  //         color: Theme.of(context).backgroundColor,
  //         boxShadow: [
  //           BoxShadow(color: Colors.black26, blurRadius: 6.0),
  //         ],
  //         borderRadius: BorderRadius.circular(30.0),
  //       ),
  //       child: Column(
  //         mainAxisSize: MainAxisSize.min,
  //         crossAxisAlignment: CrossAxisAlignment.end,
  //         children: [
  //           if(!_wrapedOptions) Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               crossAxisAlignment: CrossAxisAlignment.end,
  //               children: [
  //                 __buildDivisionsOption(),
  //                 __buildDirectionOption(),
  //                 __buildReverseOption(),
  //               ],
  //             ),
  //           ),
  //           FloatingActionButton(
  //             elevation: 0.0,
  //             highlightElevation: 0.0,
  //             onPressed: () => setState(() => _wrapedOptions = !_wrapedOptions),
  //             child: Icon(Icons.build),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget __buildDivisionsOption() {
  //   return _buildOption(
  //     "Layers",
  //     CupertinoSegmentedControl<int>(
  //       groupValue: _nbLayers,
  //       children: {2: Text("2"), 3: Text("3"), 4: Text("4")},
  //       onValueChanged: (value) => setState(() {
  //         _controller.forward(from: 0.0);
  //         _nbLayers = value;
  //       }),
  //     ),
  //   );
  // }

  // Widget __buildReverseOption() {
  //   return _buildOption(
  //     "Reverse",
  //     CupertinoSegmentedControl<bool>(
  //       groupValue: _reversed,
  //       children: {false: Text("no"), true: Text("yes")},
  //       onValueChanged: (value) => setState(() {
  //         _controller.forward(from: 0.0);
  //         _reversed = value;
  //       }),
  //     ),
  //   );
  // }

  // Widget __buildDirectionOption() {
  //   return _buildOption(
  //     "Direction",
  //     CupertinoSegmentedControl<Axis>(
  //       groupValue: _direction,
  //       children: {Axis.vertical: Text("vertical"), Axis.horizontal: Text("horizontal")},
  //       onValueChanged: (value) => setState(() {
  //         _controller.forward(from: 0.0);
  //         _direction = value;
  //       }),
  //     ),
  //   );
  // }

  // Widget _buildOption(String text, Widget child) {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 4.0, left: 8.0, bottom: 4.0),
  //     child: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Flexible(child: Text(text), flex: 1,),
  //         Expanded(child: child, flex: 2,),
  //       ],
  //     ),
  //   );
  // }

  Widget buildWallLayout() {
    return WallLayout(
      scrollDirection: _direction,
      stones: _buildStonesList(),
      reverse: _reversed,
      layersCount: _nbLayers,
    );
  }

  List<Stone> _buildStonesList() {
    final data = [
      {"color": Colors.red, "width": 1, "height": 1, "text": 'Reaix'},
      {"color": Colors.greenAccent, "width": 1, "height": 1, "text": 'Health'},
      {"color": Colors.lightBlue, "width": 1, "height": 2, "text": 'Yoga'},
      {"color": Colors.purple, "width": 1, "height": 1, "text": 'Hydration'},
      {"color": Colors.yellow, "width": 1, "height": 1, "text": 'Fitness'},
      {"color": Colors.cyanAccent, "width": 1, "height": 1, "text": 'Reading'},
      {"color": Colors.orange, "width": 2, "height": 2, "text": 'Writing'},
      {"color": Colors.green, "width": 1, "height": 1, "text": 'Singing'},
      {"color": Colors.pink, "width": 2, "height": 1, "text": 'Dancing'},
      {"color": Colors.blueAccent, "width": 1, "height": 1, "text": 'Eating'},
      {"color": Colors.amber, "width": 1, "height": 2, "text": 'Playing'},
      {"color": Colors.teal, "width": 2, "height": 1, "text": 'Eating'},
      {
        "color": Colors.lightGreenAccent,
        "width": 1,
        "height": 1,
        "text": 'Running'
      },
      {"color": Colors.deepOrange, "width": 1, "height": 1, "text": 'Climbing'},
      {
        "color": Colors.deepPurpleAccent,
        "width": 2,
        "height": 2,
        "text": 'Driving'
      },
      {
        "color": Colors.lightBlueAccent,
        "width": 1,
        "height": 1,
        "text": 'Typing'
      },
      {"color": Colors.limeAccent, "width": 1, "height": 1, "text": 'Helping'},
    ];
    return data.map((d) {
      int width = d["width"] as int;
      int height = d["height"] as int;
      //int id = d["id"] as int;
      return Stone(
        id: data.indexOf(d),
        width: width,
        height: height,
        child: __buildStoneChild(
          background: d["color"] as Color,
          //text: "${width}x$height",
          text: d["text"] as String,
          surface: (width * height).toDouble(),
          // surface: Blob.random(
          //     //id: ['id'],
          //     size: 200
          // ),
        ),
      );
    }).toList();
  }

  Widget __buildStoneChild(
      {required Color background,
      required String text,
      required double surface}) {
    bool isChecked = false;

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

    return ScaleTransition(
      scale: CurveTween(curve: Interval(0.0, min(1.0, 0.25 + surface / 6.0)))
          .animate(_controller),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              background,
              Color.alphaBlend(background.withOpacity(0.6), Colors.black)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          // borderRadius: BorderRadius.circular(200),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(500),
            topRight: Radius.circular(600),
            bottomRight: Radius.circular(400),
            bottomLeft: Radius.circular(600),
          ),
        ),
        child:
            Text(text, style: TextStyle(color: Colors.white, fontSize: 32.0)),
      ),
      // child: Blob.random(
      //   size: 150,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Checkbox(
      //         checkColor: Colors.white,
      //         fillColor: MaterialStateProperty.resolveWith(getColor),
      //         value: isChecked,
      //         onChanged: (bool? value){
      //           setState(() {
      //             isChecked = value!;
      //           });
      //         },
      //       ),
      //       Text(
      //         'Health',
      //         style: TextStyle(
      //           fontSize: 15,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
