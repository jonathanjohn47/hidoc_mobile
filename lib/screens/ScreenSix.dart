///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class ScreenSix extends StatelessWidget {
  const ScreenSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0x00000000),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: const Color(0xffb1b1b1), width: 1),
            ),
            child: SingleChildScrollView(
              child: Column(
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
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xffe3f1fd),
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: const Color(0x4d9e9e9e), width: 0),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xff2c95e6),
                          size: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                        width: 8,
                      ),
                      const Text(
                        "Quizzes:",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                        width: 8,
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Participate and win exciting prizes",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color(0xff808080),
                    height: 16,
                    thickness: 0,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
            width: 16,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xffffeacc),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: const Color(0x4d9e9e9e), width: 0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Social Network for doctors - A special feature on Hidoc Dr.",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                  width: 16,
                ),
                Chip(
                  labelPadding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                  label: const Text("Visit"),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xffffffff),
                  ),
                  backgroundColor: const Color(0xfffd9800),
                  elevation: 4,
                  shadowColor: const Color(0xff808080),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
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
