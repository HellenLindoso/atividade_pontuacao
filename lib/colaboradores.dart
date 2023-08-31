import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  @override
  _ColaboradoresState createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final lista = [
    {
      'nome': 'Juliana Albuquerque',
      'cargo': 'Coordenadora de Apoio',
      'telefone': '(81) 99731-8333',
      'email': 'julianaalbuquerque@email.com',
      'imagem': '219969.png'
    },
    {
      'nome': 'Angela Taís',
      'cargo': 'Chefe de Obras',
      'telefone': '(81) 99762-9832',
      'email': 'angelatais@email.com',
      'imagem': '219969.png'
    },
    {
      'nome': 'Carlos Alexandre',
      'cargo': 'Suporte',
      'telefone': '(81) 9631-2343',
      'email': 'carlosalexandre@email.com',
      'imagem': '4128176.png'
    },
    {
      'nome': 'Ana Beatriz',
      'cargo': 'Atendente',
      'telefone': '(81) 99746-2398',
      'email': 'anabeatriz@email.com',
      'imagem': '219969.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          var dados = lista[i];
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/" + dados['imagem'].toString(),
                    width: 200,
                  ),
                  Column(
                    children: [
                      Text(
                        dados['nome'].toString(),
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dados['cargo'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        dados['telefone'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        dados['email'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          );
        });
  }
}
