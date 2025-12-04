import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// ================= Главный экран =================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BUU — Мои задачи')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Введите задачу...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: null, // пока без логики
                  child: const Text('+'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Checkbox(value: false, onChanged: null),
                  title: const Text('Купить молоко'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: null,
                  ),
                ),
                ListTile(
                  leading: const Checkbox(value: false, onChanged: null),
                  title: const Text('Сделать ЛР'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: null,
                  ),
                ),
                ListTile(
                  leading: const Checkbox(value: true, onChanged: null),
                  title: const Text('Погулять с собакой'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // На данном этапе навигация не требуется
              },
              child: const Text('Перейти к деталям'),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= Экран деталей =================
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Детали / Информация')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '"Цитата загружается..."',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: null, // Пока без логики
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
