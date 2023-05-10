///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Screen_One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Color(0xfffabea7),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -40.w,
            left: -40.w,
            child: CircleAvatar(
              radius: 45.w,
              backgroundColor: Colors.transparent,
              child: Container(
                  width: 60.w,
                  height: 60.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color(0xfff9bda6),
                        Color(0xfff9bfa6),
                        Color(0xfffac0a5),
                        Color(0xfff7c2a5),
                        Color(0xfff8c6a2),
                        Color(0xfff8c6a3),
                        Color(0xfffbcaa1),
                        Color(0xfffacaa0),
                        Color(0xfffacaa0),
                      ]))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
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
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffd0f1f6),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0)),
                          border:
                              Border.all(color: Color(0xffd0f1f6), width: 1),
                        ),
                        child: Text(
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
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
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
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  Card(
                    margin: EdgeInsets.all(4),
                    color: Color(0xffe0e0e0),
                    shadowColor: Color(0xff000000),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: "Critical Care",
                              items: [
                                "Critical Care"
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              onChanged: (value) {},
                              elevation: 8,
                              isExpanded: true,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  Card(
                    margin: EdgeInsets.all(4),
                    color: Color(0xffffffff),
                    shadowColor: Color(0xff000000),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                      ),
                      side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0)),
                          child:

                              ///***If you have exported images you must have to copy those images in assets/images directory.
                              Image(
                            image: NetworkImage(
                                "https://picsum.photos/250?image=9"),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                          width: 16,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                          child: Text(
                            "Decoding the Nexus Criteria for Critical Care: A Comprehensive Guide",
                            textAlign: TextAlign.start,
                            maxLines: 3,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                          width: 16,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                          child: Text(
                            "The nexus critera has been used by healthcare professionals to determine whether a patient needs critical care or not. ",
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                          width: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment(0.1, 0.0),
                                child: Text(
                                  "Read full article to earn points",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12,
                                    color: Color(0xff02bdd5),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              width: 60,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff02bdd5),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8.0)),
                                border: Border.all(
                                    color: Color(0xff02bdd5), width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Points",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  Text(
                                    "2",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  //Delete here
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
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
                  SizedBox(
                    height: 16,
                    width: 16,
                  ),
                  Column(
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
                                  color: Color(0xff02bdd5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.zero,
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Text(
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Text(
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                        ],
                      ),
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
                                  color: Color(0xff02bdd5),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.zero,
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 0),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Text(
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Text(
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
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
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Card(
                            margin: EdgeInsets.all(4.0),
                            color: Color(0xffd8ecef),
                            shadowColor: Color(0xff000000),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              side: BorderSide(
                                  color: Color(0x4d9e9e9e), width: 0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Trending Hidoc Bulletin",
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
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Fluid Infusion in Postoperative TBI Patients ",
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 13,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                            width: 16,
                                          ),
                                          Text(
                                            "Traumatic brain injuries are noticed in patients as a severe side effect of surgeries. It can occur because of the events like incisions, retraction, thermal damage.... ",
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
                                            height: 8,
                                            width: 16,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
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
                                          SizedBox(
                                            height: 16,
                                            width: 16,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Fluid Infusion in Postoperative TBI Patients ",
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 13,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                            width: 16,
                                          ),
                                          Text(
                                            "Traumatic brain injuries are noticed in patients as a severe side effect of surgeries. It can occur because of the events like incisions, retraction, thermal damage.... ",
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
                                            height: 8,
                                            width: 16,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
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
                                          SizedBox(
                                            height: 16,
                                            width: 16,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                margin: EdgeInsets.all(4.0),
                                color: Color(0xfffe9800),
                                shadowColor: Color(0xff000000),
                                elevation: 6,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(
                                      color: Color(0x4d9e9e9e), width: 0),
                                ),
                                child: Padding(
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
                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Color(0xffb1b1b1), width: 1),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
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
                                  SizedBox(
                                    height: 8,
                                    width: 16,
                                  ),
                                  Divider(
                                    color: Color(0xffb1b1b1),
                                    height: 16,
                                    thickness: 2,
                                    indent: 8,
                                    endIndent: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 8),
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
                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Container(
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height *
                                0.35000000000000003,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Color(0xffb1b1b1), width: 1),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
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
                                  SizedBox(
                                    height: 8,
                                    width: 16,
                                  ),
                                  Divider(
                                    color: Color(0xffb1b1b1),
                                    height: 16,
                                    thickness: 2,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ///***If you have exported images you must have to copy those images in assets/images directory.
                                          Image(
                                            image: NetworkImage(
                                                "https://picsum.photos/250?image=9"),
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),

                                          SizedBox(
                                            height: 8,
                                            width: 16,
                                          ),
                                          Text(
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
                                          Divider(
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
                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                              color: Color(0x00000000),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4.0),
                              border: Border.all(
                                  color: Color(0xffb1b1b1), width: 1),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Explore More in Articles",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                    width: 16,
                                  ),
                                  Divider(
                                    color: Color(0xffb1b1b1),
                                    height: 16,
                                    thickness: 2,
                                    indent: 8,
                                    endIndent: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0, horizontal: 8),
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
                                  SizedBox(
                                    height: 25.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 8),
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                            width: 16,
                          ),
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
                                    side: BorderSide(
                                        color: Color(0x4d9e9e9e), width: 0),
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
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      image: NetworkImage(
                                          "https://picsum.photos/250?image=9"),
                                      height:
                                          MediaQuery.of(context).size.height,
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
