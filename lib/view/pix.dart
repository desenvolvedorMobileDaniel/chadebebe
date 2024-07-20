import 'package:convitedobebe/view/boders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class Pix extends StatelessWidget {
  Pix({super.key});
  String value = '64992720864';
  @override
  Widget build(BuildContext context) {
    final bordes = Provider.of<Bordes>(listen: false, context);
    return Scaffold(
      appBar: AppBar(
        title: Text("pix"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
              child: Image.asset('img/pix.png'),
          ),
          SizedBox(height: 50,),
          Center(
            child: Container(
                height: 50,
                width: 250,
                decoration: bordes.bordes(
                    colorContainer: Colors.white,
                    color: Colors.lightBlueAccent,
                    circular: 10,
                    bottom: 2,
                    left: 2,
                    rigth: 2,
                    top: 2),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Chave pix: $value",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ))),
          ),
          SizedBox(height: 10,),
          Container(
              height: 70,
              width: 300,
              decoration: bordes.bordes(
                  colorContainer: Colors.white,
                  color: Colors.lightBlueAccent,
                  circular: 10,
                  bottom: 2,
                  left: 2,
                  rigth: 2,
                  top: 2),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Titular: Daniel de castro peres",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ))),
          SizedBox(height: 10,),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
            ),
            child: Text("Copiar",
            style: TextStyle(
              color: Colors.white
            ),),
            onPressed: () async {
              final res = await ClipboardData(text: value);
              Clipboard.setData(res).then((_) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Copiado: $value"),
                ));
              });
              print(res.text);
            },
          ),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
