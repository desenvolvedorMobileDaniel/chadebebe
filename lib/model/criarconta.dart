import 'package:flutter/material.dart';

class CriarConta {
  Widget CreateAccount({ required TextInputType keyboard, required TextEditingController controller,required String label}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboard,
        decoration: InputDecoration( 
          fillColor: Colors.red,
          helperStyle: TextStyle(color: Colors.black),       
          border: const OutlineInputBorder(
            //borderSide: BorderSide(color:  Colors.red,)
          ),
            label: Text(label)
        ),
      ),
    );
  }
}
