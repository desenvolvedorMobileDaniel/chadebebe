
import 'package:convitedobebe/view/boders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Cronner{

  containerCronner({
    required BuildContext context,
    required Color color,
    required String txt,
    required String num,
    required double height,
    required double width,
    required double fontSize,}){
    final bordes = Provider.of<Bordes>(context, listen: false);
    return Container(
            decoration: bordes.bordes(bottom: 1,top: 1, left:1, rigth: 1, circular: 5, color: Colors.cyan[200]!, colorContainer:Colors.cyanAccent ),
            height: height,
            width: width,
            child: Column(
              children: [
                Container(
                  decoration: bordes.bordes(bottom: 0.5,top: 1.0, left: 0.5, rigth: 0.5, circular: 3,
                      color: Colors.white, colorContainer: Colors.white) ,
                  height: 20,
                  width: 55,
                  child:  Center(
                    child: Text(txt,
                      style: TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),),
                  ),
                ),
                Text(num,
                  style:  TextStyle(
                   fontWeight: FontWeight.w300,
                      fontSize: fontSize,
                      fontFamily: AutofillHints.location,
                      color: Colors.black
                  ),
                ),
              ],),

    );
  }
}
