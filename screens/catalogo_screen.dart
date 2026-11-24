import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  // Lista simulada de produtos/tecnologias
  final List> itens = const [
    {
      'titulo': 'Notebook Dev Pro 16"',
      'descricao': 'Processador Octa-Core, 32GB RAM e SSD NVMe de 1TB.',
      'icone': Icons.laptop_mac,
    },
    {
      'titulo': 'Monitor Ultrawide 29"',
      'descricao': 'Ideal para manter o emulador e o VS Code lado a lado.',
      'icone': Icons.desktop_windows,
    },
    {
      'titulo': 'Teclado Mecânico RGB',
      'descricao': 'Switches táteis silenciosos para longas sessões de código.',
      'icone': Icons.keyboard,
    },
    {
      'titulo': 'Smartphone Teste Android',
      'descricao': 'Dispositivo físico para depuração USB e testes de sensores.',
      'icone': Icons.smartphone,
    },
    {
      'titulo': 'Headset Noise Cancelling',
      'descricao': 'Foco total durante o desenvolvimento de interfaces Flutter.',
      'icone': Icons.headset,
    },
    {
      'titulo': 'Cadeira Ergonômica Mesh',
      'descricao': 'Ajuste lombar completo para aulas no turno noturno.',
      'icone': Icons.chair,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo Dinâmico'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final item = itens[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade100,
                child: Icon(
                  item['icone'] as IconData,
                  color: Colors.teal.shade800,
                ),
              ),
              title: Text(
                item['titulo'] as String,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  item['descricao'] as String,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            ),
          );
        },
      ),
    );
  }
}
