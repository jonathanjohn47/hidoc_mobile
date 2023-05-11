///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: const Color(0xfffabea7),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -50.w,
            left: -50.w,
            child: CircleAvatar(
              radius: 45.w,
              backgroundColor: const Color(0xfffabea7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 16,
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xffd0f1f6),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0)),
                        border: Border.all(color: const Color(0xffd0f1f6), width: 1),
                      ),
                      child: const Text(
                        "hidoc",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Icon(
                      Icons.home,
                      color: Color(0xffffffff),
                      size: 24,
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment(-0.1, 0.0),
                        child: Text(
                          "ARTICLES",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "Hidoc Bulletin",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: false,
                    physics: const ScrollPhysics(),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: const Color(0xff02bdd5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.zero,
                                  border: Border.all(
                                      color: const Color(0x4d9e9e9e), width: 0),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          const Text(
                            "Vaccine hesitancy: Where are we and where are we going? ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Color(0xff000000),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          const Text(
                            "A justified way to prevent infection explosion associated with lethal damage is timely vaccination. It provides immunization, builds self-immunity & provides overspread health protection.... ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Text(
                                "Read More...",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff02bdd5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
