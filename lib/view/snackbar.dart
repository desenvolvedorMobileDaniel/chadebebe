import 'package:flutter/material.dart';

ShowSnackBar(BuildContext context, {required String message, bool isError = false }){
  SnackBar snackBar = SnackBar(content: Text(message), backgroundColor: isError?Colors.red: Colors.blueAccent,);
  ScaffoldMessenger.of(context).showSnackBar(snackBar, );
}
