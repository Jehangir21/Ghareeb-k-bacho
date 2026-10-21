import 'package:flutter/material.dart';

void main() {
  runApp(const GhareebKBachoApp());
}

class GhareebKBachoApp extends StatelessWidget {
  const GhareebKBachoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ghareeb k Bacho',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF287A45),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F8EF),
      ),
      home: const FarmHomePage(),
    );
  }
}

class FarmHomePage extends StatefulWidget {
  const FarmHomePage({super.key});

  @override
  State<FarmHomePage> createState() => _FarmHomePageState();
}

class _FarmHomePageState extends State<FarmHomePage> {
  int eggs = 0;
  int coins = 100;
  int chickens = 3;

  void collectEgg() {
    setState(() {
      eggs += 1;
      coins += 5;
    });
  }

  void resetDemo() {
    setState(() {
      eggs = 0;
      coins = 100;
      chickens = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ghareeb k Bacho',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: const Color(0xFF287A45),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFDFF2C9), Color(0xFFF8EBC4)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('🌱  MY LITTLE FARM', style: TextStyle(
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF287A45),
                  )),
                  SizedBox(height: 10),
                  Text('Grow together.', style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF203A29),
                  )),
                  SizedBox(height: 6),
                  Text('A free virtual farm game for everyone.'),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(child: _statCard('🐔 Chickens', '$chickens')),
                const SizedBox(width: 10),
                Expanded(child: _statCard('🥚 Virtual eggs', '$eggs')),
                const SizedBox(width: 10),
                Expanded(child: _statCard('🪙 Demo coins', '$coins')),
              ],
            ),
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFDCE8D6)),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  const Text('🐔 🐔 🐔', style: TextStyle(fontSize: 52)),
                  const SizedBox(height: 8),
                  const Text('Your chicken coop', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  const SizedBox(height: 6),
                  const Text(
                    'Collect an egg to earn 5 virtual demo coins.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: collectEgg,
                      icon: const Icon(Icons.egg_alt_outlined),
                      label: const Text('Collect an egg'),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: resetDemo,
                      child: const Text('Reset demo farm'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Card(
              color: const Color(0xFFFFF4D9),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: Color(0xFF815B11)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Demo only: coins and eggs are virtual and have no cash value. '
                        'No deposits, payments, withdrawals, or cash rewards are enabled. '
                        'Any future rewards would depend on published eligibility rules '
                        'and genuine, settled sponsor or advertising revenue.',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Prototype v0.1 • Local demo data only',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _statCard(String label, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFDCE8D6)),
      ),
      child: Column(
        children: [
          Text(value, style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w900,
          )),
          const SizedBox(height: 5),
          Text(label, textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }
}
