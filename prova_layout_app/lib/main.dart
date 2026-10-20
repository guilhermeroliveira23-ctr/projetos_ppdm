import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';
// TODO Desafio 7: Importar o widget customizado criado em lib/widgets/bloco_estatistica.dart
// import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Avaliação 02 (Layout Widgets)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Dashboard de Observações'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // ===================================================================
          // 📍 DESAFIO 2 (1,0 ponto): 
          // Alterar o crossAxisAlignment de .start para CrossAxisAlignment.center
          // ===================================================================
          crossAxisAlignment: CrossAxisAlignment.center,

  children: [
    const Text(
      'Resumo das Observações',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
            const SizedBox(height: 16.0),

            // ===================================================================
            // 📍 DESAFIO 1 (1,5 ponto) & DESAFIO 8 (3,0 pontos):
            // Desafio 1: Adicionar o 3º Card (Icons.camera_alt, '45', 'Fotos') com Expanded.
            // Desafio 8: Refatorar esta seção usando GridView.count (grade 2x2).
            // ===================================================================
            
 // DESAFIOS 1 E 7: Primeira linha com três cards reutilizáveis
Row(
  children: const [
    Expanded(
      child: BlocoEstatistica(
        icone: Icons.flutter_dash,
        valor: '124',
        rotulo: 'Aves Vistas',
        corFundo: Color(0xFFB2DFDB),
      ),
    ),
    SizedBox(width: 12),
    Expanded(
      child: BlocoEstatistica(
        icone: Icons.place,
        valor: '18',
        rotulo: 'Locais Visitados',
        corFundo: Color(0xFFE0F2F1),
      ),
    ),
    SizedBox(width: 12),
    Expanded(
      child: BlocoEstatistica(
        icone: Icons.camera_alt,
        valor: '45',
        rotulo: 'Fotos',
        corFundo: Color(0xFFB2DFDB),
      ),
    ),
  ],
),

const SizedBox(height: 24),

// DESAFIO 8: Grade 2x2 com GridView.count
const Text(
  'Estatísticas em Grade',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 16),

GridView.count(
  crossAxisCount: 2,
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
  childAspectRatio: 1.1,
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  children: const [
    BlocoEstatistica(
      icone: Icons.flutter_dash,
      valor: '124',
      rotulo: 'Aves Vistas',
      corFundo: Color(0xFFB2DFDB),
    ),
    BlocoEstatistica(
      icone: Icons.place,
      valor: '18',
      rotulo: 'Locais Visitados',
      corFundo: Color(0xFFE0F2F1),
    ),
    BlocoEstatistica(
      icone: Icons.camera_alt,
      valor: '45',
      rotulo: 'Fotos',
      corFundo: Color(0xFFB2DFDB),
    ),
    BlocoEstatistica(
      icone: Icons.park,
      valor: '8',
      rotulo: 'Parques',
      corFundo: Color(0xFFE0F2F1),
    ),
  ],
),

const SizedBox(height: 24),

            // ===================================================================
            // 📍 DESAFIO 5 (2,0 pontos) & DESAFIO 6 (1,5 ponto):
            // Desafio 5: Adicionar o 2º selo no Stack (bottom: -8, left: -8)
            //            com texto "Confirmado" e cor verde (Colors.green).
            // Desafio 6: Substituir o Container abaixo por um Card(elevation: 4).
            // ===================================================================
            Stack(
  clipBehavior: Clip.none,
  children: [
    // DESAFIO 6: Card do Material com elevation 4
    Card(
      elevation: 4,
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(
                Icons.star,
                size: 48,
                color: Colors.amber,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Gavião-Real',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Avistado no Parque Central',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),

    // DESAFIO 5: Selo Raro no canto superior direito
    Positioned(
      top: -8,
      right: -8,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'Raro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),

    // DESAFIO 5: Selo Confirmado no canto inferior esquerdo
    Positioned(
      bottom: -8,
      left: -8,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'Confirmado',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ],
),

            // ===================================================================
            // 📍 DESAFIO 3 (2,0 pontos):
            // Criar a seção "Últimos Registros" com Container, Row, ícone de lista,
            // texto e botão/ícone com MainAxisAlignment.spaceBetween.
            // ===================================================================
            
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: Colors.teal.shade50,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(color: Colors.teal.shade100),
  ),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.list_alt, color: Colors.teal),
              SizedBox(width: 8),
              Text(
                'Últimos Registros',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.teal,
            ),
          ),
        ],
      ),
      const Divider(),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Bem-te-vi'),
          Text(
            'Hoje, 09:30',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),

      const SizedBox(height: 16),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Sabiá-laranjeira'),
          Text(
            'Ontem, 15:20',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),

      const SizedBox(height: 16),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('João-de-barro'),
          Text(
            'Ontem, 10:15',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ],
  ),
),

            // ===================================================================
            // 📍 DESAFIO 4 (1,5 ponto):
            // Demonstrar/comprovar a ocorrência e correção de um erro de overflow
            // (RenderFlex overflow) via prints ou bloco comentado.
            // ===================================================================
// DESAFIO 4: CORREÇÃO DO OVERFLOW
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(8),
  color: Colors.green.shade100,
  child: Row(
    children: [
      Expanded(
        child: Container(
          height: 60,
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text(
            'Bloco 1',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: Container(
          height: 60,
          color: Colors.teal,
          alignment: Alignment.center,
          child: const Text(
            'Bloco 2',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  ),
),









          ],
        ),
      ),
    );
  }
}
