///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc_mobile/get_controllers/screen1_get_controller.dart';
import 'package:hidoc_mobile/models/articles_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class Screen_One extends StatelessWidget {
  ScreenOneGetController getController = Get.put(ScreenOneGetController());

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
          Positioned(
            bottom: 0,
            right: 0,
            child: CustomPaint(
              size: Size(100.w, (100.h).toDouble()),
              //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
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
                        border: Border.all(color: Color(0xffd0f1f6), width: 1),
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
                Expanded(
                  child: FutureBuilder<ArticlesModel>(
                      future: getController.getArticles(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          ArticlesModel articlesModel = snapshot.data!;
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
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
                                    side: BorderSide(
                                        color: Color(0x4d9e9e9e), width: 1),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 50,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            value: "Critical Care",
                                            items: ["Critical Care"]
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
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
                                    side: BorderSide(
                                        color: Color(0x4d9e9e9e), width: 1),
                                  ),
                                  child: CarouselSlider(
                                    items: [
                                      ...articlesModel.data.exploreArticle
                                          .map((e) => Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight: Radius
                                                                .circular(4.0)),
                                                    child: Image(
                                                      image: NetworkImage(
                                                          e.articleImg),
                                                      height: 100,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 0,
                                                            horizontal: 8),
                                                    child: Text(
                                                      e.articleTitle,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 0,
                                                            horizontal: 8),
                                                    child: Text(
                                                      e.articleDescription,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 4,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                    width: 16,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Align(
                                                          alignment: Alignment(
                                                              0.1, 0.0),
                                                          child: Text(
                                                            "Read full article to earn points",
                                                            textAlign:
                                                                TextAlign.start,
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff02bdd5),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        padding:
                                                            EdgeInsets.all(0),
                                                        width: 60,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xff02bdd5),
                                                          shape: BoxShape
                                                              .rectangle,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0)),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xff02bdd5),
                                                              width: 1),
                                                        ),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              "Points",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xffffffff),
                                                              ),
                                                            ),
                                                            Text(
                                                              "2",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontSize: 18,
                                                                color: Color(
                                                                    0xffffffff),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                          .toList()
                                    ],
                                    options: CarouselOptions(
                                      viewportFraction: 0.7,

                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                  width: 16,
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
                                    ...articlesModel.data.bulletin
                                        .map(
                                          (e) => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.zero,
                                                    padding: EdgeInsets.zero,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    height: 8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff02bdd5),
                                                      shape: BoxShape.rectangle,
                                                      borderRadius:
                                                          BorderRadius.zero,
                                                      border: Border.all(
                                                          color:
                                                              Color(0x4d9e9e9e),
                                                          width: 0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8,
                                                width: 16,
                                              ),
                                              Text(
                                                e.articleTitle,
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
                                                e.articleDescription,
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal,
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
                                        )
                                        .toList()
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ...articlesModel
                                                .data.trandingBulletin
                                                .map((e) => Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          e.articleTitle,
                                                          textAlign:
                                                              TextAlign.start,
                                                          overflow:
                                                              TextOverflow.clip,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 13,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 8,
                                                          width: 16,
                                                        ),
                                                        Text(
                                                          e.articleDescription,
                                                          textAlign:
                                                              TextAlign.start,
                                                          overflow:
                                                              TextOverflow.clip,
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontSize: 12,
                                                            color: Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 8,
                                                          width: 16,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              "Read More...",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .normal,
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xff02bdd5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 16,
                                                          width: 16,
                                                        ),
                                                      ],
                                                    ))
                                                .toList()
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
                                        borderRadius:
                                            BorderRadius.circular(4.0),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                        color: Color(0xffb1b1b1), width: 1),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ...articlesModel.data.latestArticle
                                                .map((e) => Column(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 0,
                                                                  horizontal:
                                                                      8),
                                                          child: Text(
                                                            e.articleTitle,
                                                            textAlign:
                                                                TextAlign.start,
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Divider(
                                                          color:
                                                              Color(0xff808080),
                                                          height: 16,
                                                          thickness: 1,
                                                          indent: 8,
                                                          endIndent: 8,
                                                        ),
                                                      ],
                                                    ))
                                                .toList()
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ...articlesModel
                                                .data.trandingArticle
                                                .map(
                                              (e) => Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image(
                                                    image: NetworkImage(
                                                        e.articleImg),
                                                    height: 100,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                    width: 16,
                                                  ),
                                                  Text(
                                                    e.articleDescription,
                                                    textAlign: TextAlign.start,
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal,
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
                                            )
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
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          side: BorderSide(
                                              color: Color(0x4d9e9e9e),
                                              width: 0),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.45,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                          ...articlesModel.data.news
                                              .map(
                                                (e) => Column(
                                                  children: [
                                                    Text(
                                                      e.title,
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),

                                                    SizedBox(
                                                      height: 16,
                                                      width: 16,
                                                    ),

                                                    ///***If you have exported images you must have to copy those images in assets/images directory.
                                                    Image(
                                                      image: NetworkImage(
                                                          e.urlToImage),
                                                      height:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .height,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                      width: 16,
                                                    ),
                                                  ],
                                                ),
                                              )
                                              .toList()
                                        ],
                                      ),
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
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0x00000000),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                        color: Color(0xffb1b1b1), width: 1),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.zero,
                                                  padding: EdgeInsets.zero,
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffe3f1fd),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color:
                                                            Color(0x4d9e9e9e),
                                                        width: 0),
                                                  ),
                                                  child: Icon(
                                                    MdiIcons.trophy,
                                                    color: Color(0xff2c95e6),
                                                    size: 24,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                  width: 8,
                                                ),
                                                Text(
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
                                                SizedBox(
                                                  height: 16,
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    "Participate and win exciting prizes",
                                                    textAlign: TextAlign.start,
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: 14,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.zero,
                                                  padding: EdgeInsets.zero,
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffe3f1fd),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color:
                                                            Color(0x4d9e9e9e),
                                                        width: 0),
                                                  ),
                                                  child: Icon(
                                                    Icons.calculate,
                                                    color: Color(0xff2c95e6),
                                                    size: 24,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                  width: 8,
                                                ),
                                                Text(
                                                  "Medical Calculators:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 14,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    "Get access to 800+ based calculators",
                                                    textAlign: TextAlign.start,
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: 14,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffeacc),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.zero,
                                    border: Border.all(
                                        color: Color(0x4d9e9e9e), width: 0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
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
                                      SizedBox(
                                        height: 16,
                                        width: 16,
                                      ),
                                      Chip(
                                        labelPadding: EdgeInsets.symmetric(
                                            horizontal: 4, vertical: 0),
                                        label: Text("Visit"),
                                        labelStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          color: Color(0xffffffff),
                                        ),
                                        backgroundColor: Color(0xfffd9800),
                                        elevation: 4,
                                        shadowColor: Color(0xff808080),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                  width: 16,
                                ),
                              ],
                            ),
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      //#fce8d3
      ..color = const Color(0xfffce8d3)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.4991211, size.height * 0.9998129);
    path0.quadraticBezierTo(size.width * 0.3829000, size.height * 0.9155420,
        size.width * 0.4991211, size.height * 0.8536496);
    path0.cubicTo(
        size.width * 0.6206750,
        size.height * 0.8150792,
        size.width * 0.7060303,
        size.height * 0.8346061,
        size.width * 0.7750000,
        size.height * 0.8282582);
    path0.quadraticBezierTo(size.width * 0.8919750, size.height * 0.8306943,
        size.width * 0.9991211, size.height * 0.7927483);
    path0.lineTo(size.width * 0.9991211, size.height * 0.9998129);
    path0.lineTo(size.width * 0.4991211, size.height * 0.9998129);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
