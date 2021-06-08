import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aarogya_setu/http_service.dart';
import 'package:flutter_aarogya_setu/model/block.dart';
import 'package:flutter_aarogya_setu/model/block_response.dart';

class BlockScreen extends StatefulWidget {
  BlockScreen({Key key, int districtId, DateTime pickedDate}) : super(key: key);
  DateTime pickedDate;
  int districtId;

  @override
  _BlockScreenState createState() => _BlockScreenState();
}

class _BlockScreenState extends State<BlockScreen> {
  HttpService http;
  static DateTime pickedDate = pickedDate;
  String convertedDateTime =
      "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year.toString().substring(0, 1)}";
  static int districtId = districtId;

  BlockResponse blockResponse;
  List<Block> blocks;
  List<Block> newBlock;

  Future getBlocks() async {
    Response response;

    try {
      response = await http.getRequest(
          "/appointment/sessions/public/findByDistrict?district_id=${districtId}&date=${convertedDateTime}}");
      if (response.statusCode == 200) {
        setState(() {
          blockResponse = BlockResponse.fromJson(response.data);
          newBlock = blockResponse.block;
          final jsonList = newBlock.map((item) => jsonEncode(item)).toList();
          final uniqueJsonList = jsonList.toSet().toList();
          blocks = uniqueJsonList.map((item) => jsonDecode(item)).toList();
        });
      } else {
        print("Something wrong try again");
        //TODO popup previous page
      }
    } on Exception catch (e) {
      print(e);
      // TODO
    }
  }

  @override
  void initState() {
    http = HttpService();
    getBlocks();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Block Name Lists"),
        ),
        body: blocks != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  final block = blocks[index];
                  return ListTile(
                    title: Text(block.blockName),
                  );
                },
                itemCount: blocks.length,
              )
            : Center(
                child: Text("Block names are not available"),
              ));
  }
}
