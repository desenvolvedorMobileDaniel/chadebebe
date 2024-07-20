import 'dart:ui';

import 'package:flutter/Material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Informações"),),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Atenção",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Colors.red
                ),),
            ),),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * O convite serve como chá de fraudas e chá de bebe,"
                  " assim ficando a livre escolha para cada um.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * Oque posso levar? : livre escolha.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * Quero ir mas preciso falar com vocês... (64 992720864)",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * É menino ou menina? : São dois (2) MENINOS gemeos.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * Onde vai ser? O endereço está no menu da pagina inicial.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * Se eu não for oque eu faço com esse aplicativo? : Desinstala ou"
                  "na data do evento as 00.00 será desativado.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" * Esse app tem algum 'Dados meu'? : Não!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(" Agradecemos a Compreensão",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),),
            ),
             SizedBox(height: 50,),
             Text('2024 todos os direitos reservados ©AppBaby',
            style: TextStyle(
              color: Colors.red
            ),)
          ],
        ),
      )
    );
  }
}
