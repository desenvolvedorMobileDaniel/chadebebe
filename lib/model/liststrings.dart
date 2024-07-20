import 'package:convitedobebe/view/endereco.dart';
import 'package:convitedobebe/view/pix.dart';
import 'package:flutter/Material.dart';

import '../view/info.dart';

class ListStrings{
  String path = 'img/child.gif';
  List<Widget> bottomNav = [
    Pix(),
    Endereco(),
    Info(),
  ];
  List<String> imGif = [
    'img/child.gif',
    'img/fraldas.gif',
    'img/brinquedos.gif',
    'img/bico.gif',
    'img/lenco.gif',
    'img/mamadeira.gif',
    'img/mamae.gif',
    'img/meias.gif',
    'img/talco.gif'
  ];

  List<String> dicas = [
    'Blusas, calças, macacão ...',
    'Fraldas descartaveis Rn, P, M, G ...',
    'Brinquedos ...',
    'Acessorios: meias, luvas, sapatos',
    'Mamadeira, chuquinhas e bico ...',
    'Polmada, talco e creme',
    'Lenço umidecido',
    'Mantas, cobertor e toalhas...',
    'Algo mais a livre escolha...'

  ];
  List<String> get pathDicas => dicas;


  List<String> get pathListImg => imGif;

  List<Widget> get listBottoNav => bottomNav;

  String get pathImg => path;



}