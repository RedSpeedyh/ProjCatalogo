// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

// TELA LOGIN
// Stateful => stf + TAB
class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Atributos
  var txtLogin = TextEditingController();
  var txtSenha = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('My Anime List'),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      backgroundColor: Colors.grey.shade200,
      //CORPO
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.green.shade900,
                ),
                campoTexto('Login', txtLogin),
                campoTexto('Senha', txtSenha),
                botao('Entrar'),
                botao('Esqueci a senha!')
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: TextFormField(
        controller: variavel,
        style: TextStyle(
          fontSize: 32,
          color: Colors.green.shade900,
        ),
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(
            fontSize: 22,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        //
        // VALIDAÇÃO
        //
        validator: (value) {
          value = value!.replaceFirst(',', '.');
          if (double.tryParse(value) == null) {
            //o usuário NÃO digitou um valor numérico
            return 'Login ou senha incorretos';
          } else {
            //o usuário digitou um valor numérico
            return null;
          }
        },
      ),
    );
  }

  //
  // BOTAO
  // ElevatedButton, OutlinedButton, TextButton
  botao(rotulo) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(300, 50),
        primary: Colors.green.shade900,
        shape: StadiumBorder(),
      ),
      //COMPORTAMENTO
      onPressed: () {
        //VALIDAR OS CAMPOS DE TEXTO

        if (formKey.currentState!.validate()) {
          double p = double.parse(txtLogin.text.replaceFirst(',', '.'));
          double a = double.parse(txtSenha.text.replaceFirst(',', '.'));
          double imc = p / pow(a, 2);
          caixaDialogo('Login válido ${imc.toStringAsFixed(2)}');
        }
      },
      //CONTEÚDO
      child: Text(
        rotulo,
        style: TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(msg) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Animes'),
          content: Text(msg, style: TextStyle(fontSize: 32)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  txtLogin.clear();
                  txtSenha.clear();
                });
              },
              child: Text('fechar'),
            ),
          ],
        );
      },
    );
  }
}
