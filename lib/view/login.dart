import 'dart:ffi';

import 'package:convitedobebe/Firebase/authentication.dart';
import 'package:convitedobebe/view/homepage.dart';
import 'package:convitedobebe/view/snackbar.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../model/contagem.dart';
import '../model/criarconta.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final surname = TextEditingController();
  final id = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Authentication auth = Authentication();
    final textForm = Provider.of<CriarConta>(context, listen: false);
    final userState = Provider.of<Contagem>(context, listen: false);
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: userState.isRegister
              ? BackButton(
                  onPressed: () => userState.isRegister = false,
                  color: Colors.blue,
                )
              : null,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Seja Bem vindo ",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  textForm.CreateAccount(
                      controller: email,
                      label: "email",
                      keyboard: TextInputType.text),
                  textForm.CreateAccount(
                      controller: password,
                      label: "senha",
                      keyboard: TextInputType.visiblePassword),
                  Visibility(
                    visible: userState.isRegister,
                    child: Column(
                      children: [
                        textForm.CreateAccount(
                            controller: name,
                            label: "nome",
                            keyboard: TextInputType.text),
                        textForm.CreateAccount(
                            controller: surname,
                            label: "sobre nome",
                            keyboard: TextInputType.text),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(!userState.isRegister
                        ? "Não tem conta? Clique em criar uma conta."
                        : ""),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          try {
                            if (!userState.isRegister) {
                              auth
                                  .sigin(
                                      email: email.text,
                                      password: password.text)
                                  .then((String? erro) {
                                if (erro == null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                } else {
                                  ShowSnackBar(context,
                                      message: erro, isError: true);
                                }
                              });
                            } else {
                              auth
                                  .createUser(
                                      name: name.text,
                                      surname: surname.text,
                                      email: email.text,
                                      password: password.text)
                                  .then((String? erroCreate) {
                                if (erroCreate != null) {
                                  ShowSnackBar(context,
                                      message: erroCreate, isError: true);
                                } else {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                }
                              });
                            }
                          } catch (e) {
                            print("Excessão");
                          }
                          email.clear();
                          password.clear();
                        },
                        child: Text(userState.isRegister ? "Criar" : "Entrar",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25
                        ),),
                      ),
                      if (userState.isRegister)
                        Container()
                      else
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              userState.isRegister = true;
                            },
                            child: const Text("Criar uma conta",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 25
                              ),),
                          ),
                        )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
