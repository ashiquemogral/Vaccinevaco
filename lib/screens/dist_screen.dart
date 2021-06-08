import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aarogya_setu/http_service.dart';
import 'package:flutter_aarogya_setu/model/district.dart';
import 'package:flutter_aarogya_setu/model/district_response.dart';

import 'block_screen.dart';

class DistScreen extends StatefulWidget {
  final DateTime pickedDate;
  DistScreen({Key key,  this.pickedDate}) : super(key: key);
  // DistScreen({this.pickedDate}) : super(); // constructor
  // DateTime pickedDate;
  @override
  _DistScreenState createState() => _DistScreenState();
}

class _DistScreenState extends State<DistScreen> {
  HttpService http;
  DistrictResponse districtResponse;
  List<District> districts;

  // static DateTime pickedDate = pickedDate;

  // get pickedDate => pickedDate;

  Future getDistricts() async {
    Response response;
    try {
      response = await http.getRequest("/admin/location/districts/17");
      if (response.statusCode == 200) {
        setState(() {
          districtResponse = DistrictResponse.fromJson(response.data);
          districts = districtResponse.district;
        });
      } else {
        print("Something wrong try again");
        // TODO popup previous page
      }
    } on Exception catch (e) {
      print(e);
      //TODO popu to the previous page
    }
  }

  @override
  void initState() {
    http = HttpService();
    getDistricts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("District Lists"),
      ),
      body: districts != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                final district = districts[index];

                return ListTile(
                    title: Text(district.distName),
                    onTap: () {
                      final districtId = district.distId;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlockScreen(
                              districtId: districtId, pickedDate: ),
                        ),
                      );
                    });
              },
              itemCount: districts.length,
            )
          : Center(
              child: Text("No District found"),
            ),
    );
  }
}
