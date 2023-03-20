import 'package:flutter/material.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_app/pages/perfil_page.dart';
import 'package:my_app/widgets/cadastroUsuario.dart';
import 'package:my_app/widgets/home.dart';
import 'package:my_app/widgets/login.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_app/widgets/novaSenha.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Login(),
      // }
      //
    );
  }

  @override
  Widget home(BuildContext context) {
    return MaterialApp(
      title: 'Tela Principal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }

  @override
  Widget novaSenha(BuildContext context) {
    return MaterialApp(
      title: 'Recuperar Senha',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NovaSenha(),
    );
  }

  @override
  Widget cadastroUsuario(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Usuario',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CadastroUsuario(),
    );
  }

  Widget perfil(BuildContext context) {
    return MaterialApp(
      title: 'Conta',
      theme: ThemeData(primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),

    );

  }







}

