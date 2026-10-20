//#   PROVA PRÁTICA (29/09/2026) — `prova_cracha_app`

//### Estrutura do Código da Avaliação (`lib/main.dart`)

//    *(Você aluno deve copiar a pasta `prova_cracha_app` e completar os desafios abaixo)*

import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                ),
              ],
//----------------------------------------------------------------------------------------------------------
    //         DESAFIO 5

	 gradient: const LinearGradient(
                colors: [
                  Colors.indigo,
                  Colors.blueAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
//------------------------------------------------------------------------------------------------------------
  //             DESAFIO 1

		 const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpsWMbx59iDKurdS3erdqYR1v64pxLMg2qGhb9diuzWw&s=10',
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Guilherme Riquelme Ramos De Oliveira',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
//-------------------------------------------------------------------------------------------------------------
  //             DESAFIO 2

		 const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                const Divider(
                  color: Colors.white38,
                  height: 30,
                ),
//----------------------------------------------------------------------------------------------------------
                //DESAFIO 3
		

		const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Chip(
                      label: Text('Dart'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Flutter'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Git'),
                    ),
                  ],
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// ### Formulário de Coleta (Google Forms - 29/09)

// No formulário de entrega, você aluno deve enviar:

// 1. **Seu Nome Completo**

// 2. **Link do Repositório GitHub:** `[https://github.com/USUARIO/prova_cracha_app](https://github.com/USUARIO/prova_cracha_app)`

// 3. **Upload do arquivo `main.dart**`

// 4. **Upload do Captura de Tela (Print)** do app rodando no servidor Debian (`http://<IP_DEBIAN>:8080`). Obs. Importante ! Caso NÃO funcione na porta 8080, troque a porta por outra, por exemplo, 8081....

