import 'package:bilibili_app/config/service_headers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../config/service_url.dart';
import 'dart:convert';

Future getHomeContent() async {
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.headers= headers;
    response = await dio.get(servicePath["homePageContent"]);
    return response.data;
  }catch(e){
    print("Error=========>$e");
  }
}
