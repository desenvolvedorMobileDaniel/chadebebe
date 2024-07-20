import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bordes{
   bordes({required double circular,required Color color,required Color colorContainer, required double rigth,
     required double left,required double top, required double bottom}){
      return BoxDecoration(
        borderRadius: BorderRadius.circular(circular),
        color: colorContainer,
        border: Border(
          top: BorderSide(
            color: color,
            width: top
          ),
          bottom: BorderSide(
              color: color,
              width: bottom
          ),
          left:  BorderSide(
              color: color,
              width: left
          ),
          right:  BorderSide(
              color: color,
              width: rigth
          ),
        )
      );
  }
}