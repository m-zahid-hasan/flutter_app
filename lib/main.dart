import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
void main() {

  String weburl="https://jsonplaceholder.typicode.com/users/1";
  getPosts(weburl);

}
getPosts( var url) async{
  var res=await http.get(Uri.parse(url));
  print(jsonDecode(res.body));
}




