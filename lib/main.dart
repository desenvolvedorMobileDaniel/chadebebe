
import 'package:convitedobebe/model/contagem.dart';
import 'package:convitedobebe/model/criarconta.dart';
import 'package:convitedobebe/view/boders.dart';
import 'package:convitedobebe/view/class_cronner.dart';
import 'package:convitedobebe/view/endereco.dart';
import 'package:convitedobebe/view/homepage.dart';
import 'package:convitedobebe/view/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'model/liststrings.dart';

Future<void>main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Endereco>(create: (_) => Endereco()),
        Provider<Bordes>(
          create: (_) => Bordes(),
        ),
        Provider<Contagem>(
          create: (_) => Contagem(),
        ),
        Provider<Cronner>(
          create: (_) => Cronner(),
        ),
        Provider<ListStrings>(
          create: (_) => ListStrings(),
        ),
        Provider<HomePage>(
          create: (_) => HomePage(),
        ),
        Provider<PageLogin>(
          create: (_)=> const PageLogin(),
        ),
        Provider<CriarConta>(
          create: (_)=> CriarConta(),
        ),

      ],
      child: GestureDetector(
        onTap: ()=> FocusScope.of(context).requestFocus(FocusNode()),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor:  Colors.blue,),
              useMaterial3: true,
            ),
            home: const PageLogin()),
      ),
    );
  }
}
