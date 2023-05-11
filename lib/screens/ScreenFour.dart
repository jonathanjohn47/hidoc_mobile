///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                margin: const EdgeInsets.all(4.0),
                color: const Color(0xfffe9800),
                shadowColor: const Color(0xff000000),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  side: const BorderSide(color: Color(0x4d9e9e9e), width: 0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Read More Bulletins",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xffffffff),
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
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
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
                  const Text(
                    "Latest Articles",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                    width: 16,
                  ),
                  const Divider(
                    color: Color(0xffb1b1b1),
                    height: 16,
                    thickness: 2,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                        child: Text(
                          "Understanding the Importance of Sirs Criteria in Modern Healthcare ",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xff808080),
                        height: 16,
                        thickness: 1,
                        indent: 8,
                        endIndent: 8,
                      ),
                    ],
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
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35000000000000003,
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
                  const Text(
                    "Trending Articles",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                    width: 16,
                  ),
                  const Divider(
                    color: Color(0xffb1b1b1),
                    height: 16,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                            image: const NetworkImage(
                                "https://picsum.photos/250?image=9"),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),

                          const SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          const Text(
                            "Understanding the Importance of Sirs Criteria in Modern Healthcare ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
