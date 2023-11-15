import 'package:flutter/material.dart';
import 'package:roulette_project/enums/r_cell_type.dart';
import 'package:sizer/sizer.dart';
import './r_cell.dart';

class RouletteTable extends StatefulWidget {
  const RouletteTable(BuildContext context, {super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return RouletteTableState();
  }
}

class RouletteTableState extends State<RouletteTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: 150.w,
        height: 100.h,
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 36.h,
                      child: const RCell("0", RCellType.black),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12.h,
                          child: const Row(
                            children: [
                              RCell("3", RCellType.red),
                              RCell("6", RCellType.black),
                              RCell("9", RCellType.red),
                              RCell("12", RCellType.red),
                              RCell("15", RCellType.black),
                              RCell("18", RCellType.red),
                              RCell("21", RCellType.red),
                              RCell("24", RCellType.black),
                              RCell("27", RCellType.red),
                              RCell("30", RCellType.red),
                              RCell("33", RCellType.black),
                              RCell("36", RCellType.red),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                          child: const Row(
                            children: [
                              RCell("2", RCellType.black),
                              RCell("5", RCellType.red),
                              RCell("8", RCellType.black),
                              RCell("11", RCellType.black),
                              RCell("14", RCellType.red),
                              RCell("17", RCellType.black),
                              RCell("20", RCellType.black),
                              RCell("23", RCellType.red),
                              RCell("26", RCellType.black),
                              RCell("29", RCellType.black),
                              RCell("32", RCellType.red),
                              RCell("35", RCellType.black),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                          child: const Row(
                            children: [
                              RCell("1", RCellType.red),
                              RCell("4", RCellType.black),
                              RCell("7", RCellType.red),
                              RCell("10", RCellType.black),
                              RCell("13", RCellType.black),
                              RCell("16", RCellType.red),
                              RCell("19", RCellType.red),
                              RCell("22", RCellType.black),
                              RCell("25", RCellType.red),
                              RCell("28", RCellType.black),
                              RCell("31", RCellType.black),
                              RCell("34", RCellType.red),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 40.w,
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1)),
                                          child: const RCell(
                                              "1st 12", RCellType.flat)),
                                      const Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: RCell(
                                                  "1 to 18", RCellType.flat)),
                                          Expanded(
                                              flex: 1,
                                              child:
                                                  RCell("EVEN", RCellType.flat))
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                  width: 40.w,
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1)),
                                          child: const RCell(
                                              "2nd 12", RCellType.flat)),
                                      const Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: RCell(
                                                  "", RCellType.diamondRed)),
                                          Expanded(
                                              flex: 1,
                                              child: RCell(
                                                  "", RCellType.diamondBlack))
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                  width: 41.w,
                                  child: Column(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1)),
                                          child: const RCell(
                                              "1st 12", RCellType.flat)),
                                      const Row(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child:
                                                  RCell("ODD", RCellType.flat)),
                                          Expanded(
                                              flex: 1,
                                              child: RCell(
                                                  "19 to 36", RCellType.flat))
                                        ],
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 12.h,
                          child: const RCell("2 to 1", RCellType.flatRotate),
                        ),
                        SizedBox(
                          height: 12.h,
                          child: const RCell("2 to 1", RCellType.flatRotate),
                        ),
                        SizedBox(
                          height: 12.h,
                          child: const RCell("2 to 1", RCellType.flatRotate),
                        )
                      ],
                    )
                  ],
                ),
                const Row(
                  children: [],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
