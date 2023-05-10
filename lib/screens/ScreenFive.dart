///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class ScreenFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  margin: EdgeInsets.all(4.0),
                  color: Color(0xfffe9800),
                  shadowColor: Color(0xff000000),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: Color(0x4d9e9e9e), width: 0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Explore Hidoc Dr.",
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          Text(
            "Whats more on Hidoc Dr.",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              fontSize: 18,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xffececec),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
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
                        Text(
                          "News",
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

                    SizedBox(
                      height: 16,
                      width: 16,
                    ),
                    Text(
                      "Experts addressing burnout discuss the importance not only of self-care, but also of improving workplace conditions. ",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                      width: 16,
                    ),

                    ///***If you have exported images you must have to copy those images in assets/images directory.
                    Image(
                      image: NetworkImage("https://picsum.photos/250?image=9"),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
