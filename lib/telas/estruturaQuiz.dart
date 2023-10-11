import 'package:flutter/material.dart';

class QuizDados extends StatefulWidget {
  const QuizDados({super.key});

  @override
  State<QuizDados> createState() => _QuizDadosState();
}

class _QuizDadosState extends State<QuizDados> {
  int perguntaAtual = 0; // Controla a pergunta atual
  List<Map<String, dynamic>> quiz = [
    // ... (as perguntas que você já definiu)
  ];

  void responder(int escolha) {
    // Lógica para verificar a resposta e atualizar a pergunta atual
    if (quiz[perguntaAtual]['certo'] == escolha) {
      // Resposta correta, você pode adicionar lógica aqui
    } else {
      // Resposta incorreta, você pode adicionar lógica aqui
    }

    // Avança para a próxima pergunta ou finaliza o quiz
    if (perguntaAtual < quiz.length - 1) {
      setState(() {
        perguntaAtual++;
      });
    } else {
      // O quiz foi concluído, você pode adicionar lógica aqui
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Pergunta ${perguntaAtual + 1}:',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              quiz[perguntaAtual]['Pergunta'],
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Column(
              children: List.generate(
                quiz[perguntaAtual]['Resposta'].length,
                (index) {
                  return ElevatedButton(
                    onPressed: () {
                      responder(index);
                    },
                    child: Text(quiz[perguntaAtual]['Resposta'][index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
