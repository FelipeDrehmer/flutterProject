import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MinhaTela(),
    );
  }
}

class MinhaTela extends StatefulWidget {
  const MinhaTela({super.key});

  @override
  State<MinhaTela> createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<MinhaTela> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explorando Widgets')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.add_alarm_rounded, size: 80),
            SizedBox(height: 18),

            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              color: Colors.blue.shade50,
              child: const Text('Texto', textAlign: TextAlign.center),
            ),

            Text(
              'Flutter',
              style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Interface são formadas por Widgets.'),
          ],
        ),
      ),
    );
  }
}
