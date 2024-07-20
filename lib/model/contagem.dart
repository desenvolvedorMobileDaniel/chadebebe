import 'package:flutter/cupertino.dart';
import'package:mobx/mobx.dart';
part 'contagem.g.dart';

class Contagem = _Contagem with _$Contagem;

abstract class _Contagem with Store{
  @observable
  bool isRegister = false;
  @observable
  int valor = 0;
  @observable
  int restDivSeg = 0;
  @observable
  int restDivMin = 0;
  @observable
  int restDivHours = 0;
  @observable
  dynamic restDiv = 0;

  @action
  bottomNav(int index){
    valor = index;
    print(valor);
  }

  @action
  cronometro()async{
    var dataFinal =  DateTime.utc(2024,03,09,19,30,00);
    var data =  DateTime.now();
    var tempo = dataFinal.difference(data);

    var restSeg = (dataFinal.second - data.second);// vou ter o valor em minutos
     restDivSeg = restSeg % 60 ;// segundos que falta

    var restMin = (dataFinal .minute - data.minute);
     restDivMin = restMin % 60; // munito que falta

    var restHours = (dataFinal.hour - data.hour);
     restDivHours = restHours % 24; // hora que falta

    restDiv = dataFinal.difference(data).inDays;

  await Future.delayed(Duration(seconds: 1),()=> cronometro());
  }


}