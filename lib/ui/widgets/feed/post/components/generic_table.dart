import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mimir_news_frontend/ui/widgets/login/big_textbox_widget.dart';
import '../../../global/list_view_underline_widget.dart';
import '../../../global/poppins_text_widget.dart';
import '../../../login/big_textbox_head_widget.dart';

class GenericTable extends StatelessWidget {
  final String? title;
  final List<GenericTableItem> tableItems;
  final int? backgroundColor;

  GenericTable({
    this.title,
    this.backgroundColor,
    required this.tableItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: BigTextboxHeadWidget(bigButtonTextHead: title),
              ),
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              ...tableItems.asMap().entries.map((entry) {
                final int index = entry.key;
                final e = entry.value;
                final isLastItem =
                    index == tableItems.length - 1 ? true : false;
                final isArray = e.value is List<dynamic>;

                return Column(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          /*
                            Container(
                              child: BigTextboxHeadWidget(
                                  bigButtonTextHead: e.key),
                              width: 100,
                            ),
                            Container(
                              child: PoppinsTextWidget(
                                  text: e.value.toString()),
                            ),
                             */

                          Container(
                            margin:  EdgeInsets.only(left: 10),
                            child: SizedBox(
                              child: ListView(
                                physics: ClampingScrollPhysics(),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  BigTextboxHeadWidget(
                                    bigButtonTextHead: e.key,
                                  ),
                                  ]
                              ),
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),

                          isArray ? Expanded(
                                  child: Container(
                                    margin:  EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      child: ListView.builder(
                                        reverse: false,
                                        physics: ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: e.value.length,
                                        itemBuilder:
                                            (BuildContext context, int index) => Padding(
                                          padding: const EdgeInsets.only(left: 2, right: 2, top: 6, bottom: 6),
                                          child: Container(
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 6, left: 6),
                                                child: PoppinsTextWidget(
                                                  text: e.value[index].toString(),

                                                ),
                                              ),
                                            ),
                                            decoration: new BoxDecoration(
                                              color: Color(0xffffffff),
                                              borderRadius: BorderRadius.circular(15.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x33000000),
                                                  offset: Offset(0, 1),
                                                  blurRadius: 3,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Expanded(
                                    child: Container(
                                      margin:  EdgeInsets.only(right: 10, left: 5),
                                      child: ListView(
                                      physics: ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      reverse: true,
                                      children: [
                                        Center(
                                          child: PoppinsTextWidget(
                                            text: e.value.toString(),
                                          ),
                                        ),
                                      ],
                                ),
                                    ),
                                  )

                          //PoppinsTextWidget(text: e.value.toString())
                        ],
                      ),
                      height: 40,
                    ),
                    Offstage(
                      offstage: isLastItem,
                      child: ListViewUnderlineWidget(),
                    ),
                  ],
                );
              }).toList(),
            ],
          ),
          decoration: BoxDecoration(
            color: backgroundColor != null
                ? Color(backgroundColor!)
                : Color(0xfff2f1f6),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10.0),
              bottom: Radius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}

class GenericTableItem {
  final String key;
  final dynamic value;

  GenericTableItem({
    required this.key,
    required this.value,
  });
}
