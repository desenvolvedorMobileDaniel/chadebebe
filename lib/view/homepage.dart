import 'package:convitedobebe/model/contagem.dart';
import 'package:convitedobebe/model/liststrings.dart';
import 'package:convitedobebe/view/boders.dart';
import 'package:convitedobebe/view/class_cronner.dart';
import 'package:convitedobebe/view/endereco.dart';
import 'package:convitedobebe/view/pix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});



  @override
  Widget build(BuildContext context) {

    final croner = Provider.of<Contagem>(context, listen: false);
    final containerCronner = Provider.of<Cronner>(context, listen: false);
    final bordes = Provider.of<Bordes>(context, listen: false);
    final list = Provider.of<ListStrings>(context, listen: false);
    final end = Provider.of<Endereco>(context, listen: false);

    croner.cronometro();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
        title: Text('Seja bem vindos',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300
          ),),
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder:(_) =>   Column(
          //  crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Data do chá de bebe",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                    ),),
                    const Center(child: Text("09/03/2024",
                      style: TextStyle(
                          fontSize: 25
                      ),)),
                  ].animate(interval: 1.seconds, autoPlay: true).fade(duration: 3.seconds, ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(" Asafe ",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),),
                        SizedBox(height: 90, child: Image.asset(list.pathImg,),)
                      ]
                    ),
                    Column(
                      children: [
                        const Text("Davi", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),),
                        SizedBox(height: 90, child: Image.asset(list.pathImg,),
                        )
                      ]
                    ),
                  ],
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(height: 120,
                      decoration: bordes.bordes(bottom: 1,top: 1, left:1, rigth: 1, circular: 5,
                          color: Colors.cyanAccent,colorContainer: Colors.white),
                      child: Column(
                        children: [
                          const Text( 'Contagem Regressiva',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),),
                          const SizedBox(height: 10,),
                          Row(
                          children: [
                            const SizedBox(width: 25,),
                            containerCronner.containerCronner(
                              color: Colors.cyanAccent,
                              context: context,
                              fontSize: 25,
                              txt: 'Dia',
                              num: croner.restDiv.toString(),
                              width: 75,
                              height: 65,
                              ),
                            const SizedBox(width: 10,),
                            containerCronner.containerCronner(
                                context: context,
                                color: Colors.cyanAccent,
                              txt: 'horas',
                              num: croner.restDivHours.toString(),
                              width: 75,
                              height: 65,
                              fontSize: 25
                            ),
                            const SizedBox(width: 10,),
                            containerCronner.containerCronner(
                                color: Colors.cyanAccent,
                                context: context,
                              txt: 'minutos',
                              num: croner.restDivMin.toString(),
                              width: 80,
                              height: 65,
                              fontSize: 25
                            ),
                          const SizedBox(width: 10,),
                            containerCronner.containerCronner(
                                color: Colors.cyanAccent,
                                context: context,
                              txt: 'seg',
                              num: croner.restDivSeg.toString(),
                              width: 80,
                              height: 65,
                              fontSize: 25
                            ),

                          ],),
                        ],
                      ),
                    ),
                  ),
              const SizedBox(height: 2,),
              const Center(
                child: Text("Oque posso levar?",style: TextStyle(fontSize: 22),),
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: list.imGif.length,
                  itemBuilder: (contex, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border:const Border(
                            bottom: BorderSide(
                              color: Colors.cyanAccent,
                              width: 1
                            ),
                            top: BorderSide(
                                color: Colors.cyanAccent,
                                width: 1
                            ),
                            left: BorderSide(
                                color: Colors.cyanAccent,
                                width: 2
                            ),
                            right: BorderSide(
                                color: Colors.cyanAccent,
                                width: 2
                            )
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ListTile(
                          title: Text(list.pathDicas[index]),
                          leading: Image.asset(list.imGif[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:   BottomNavigationBar(
        onTap: (value){
          croner.bottomNav(value);
          list.bottomNav[value];
          if(value == 0){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (_)=> Pix()),
            );
          }
          if(value == 1){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=> Endereco()),
          );
          }
          if(value == 2){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=> Info()),
          );
          }
        },
        fixedColor: Colors.white,
        backgroundColor: Colors.cyanAccent,
        selectedLabelStyle: const TextStyle(
            color: Colors.white
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: "PIX",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin,
                  color: Colors.red),
              label: "Endereço"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline),
              label: "Info"
          ),
        ],
      ),
    );
  }
}
