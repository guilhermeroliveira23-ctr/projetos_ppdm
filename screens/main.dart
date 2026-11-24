import 'package:flutter/material.dart';
import 'screens/perfil_screen.dart';
import 'screens/catalogo_screen.dart';
import 'screens/formulario_screen.dart';

void main() {
  runApp(const MeuAppPPDM());
}

class MeuAppPPDM extends StatelessWidget {
  const MeuAppPPDM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista PPDM - Módulos 01 e 02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const MenuExerciciosScreen(),
    );
  }
}

class MenuExerciciosScreen extends StatelessWidget {
  const MenuExerciciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Módulos 01 e 02'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBotaoMenu(
              context,
              titulo: 'Exercício 1: Cartão de Perfil Dev',
              icone: Icons.badge,
              cor: Colors.indigo,
              destino: const PerfilScreen(),
            ),
            const SizedBox(height: 16),
            _buildBotaoMenu(
              context,
              titulo: 'Exercício 2: Catálogo Dinâmico',
              icone: Icons.list_alt,
              cor: Colors.teal,
              destino: const CatalogoScreen(),
            ),
            const SizedBox(height: 16),
            _buildBotaoMenu(
              context,
              titulo: 'Exercício 3: Formulário com Estado',
              icone: Icons.edit_document,
              cor: Colors.deepPurple,
              destino: const FormularioScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBotaoMenu(
    BuildContext context, {
    required String titulo,
    required IconData icone,
    required Color cor,
    required Widget destino,
  }) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destino),
        );
      },
      icon: Icon(icone, size: 26),
      label: Text(titulo, style: const TextStyle(fontSize: 16)),
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
