import 'package:flutter/material.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();

  String _nomeSalvo = '';
  String _cargoSalvo = '';

  @override
  void dispose() {
    // Boa prática: liberar memória dos controladores ao fechar a tela
    _nomeController.dispose();
    _cargoController.dispose();
    super.dispose();
  }

  void _cadastrarUsuario() {
    setState(() {
      _nomeSalvo = _nomeController.text.trim();
      _cargoSalvo = _cargoController.text.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro Interativo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Preencha seus dados profissionais:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome Completo',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _cargoController,
              decoration: const InputDecoration(
                labelText: 'Profissão / Cargo desejado',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.work_outline),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _cadastrarUsuario,
              icon: const Icon(Icons.check_circle),
              label: const Text(
                'Confirmar Cadastro',
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
            const SizedBox(height: 28),
            // Exibe o Card apenas quando ambos os campos forem preenchidos
            if (_nomeSalvo.isNotEmpty && _cargoSalvo.isNotEmpty)
              Card(
                color: Colors.deepPurple.shade50,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Colors.deepPurple, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.verified_user,
                        color: Colors.deepPurple,
                        size: 36,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'Bem-vindo(a), $_nomeSalvo! Cargo cadastrado: $_cargoSalvo',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
