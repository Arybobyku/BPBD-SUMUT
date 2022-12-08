import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

showLoading(BuildContext context){
  EasyLoading.show(status: 'loading...');
}

hideLoading(BuildContext context){
  EasyLoading.dismiss();
}