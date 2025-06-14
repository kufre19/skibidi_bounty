import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const SkibidiBounty());
}

class SkibidiBounty extends StatelessWidget {
  const SkibidiBounty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skibidi Bounty',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        // Placeholder routes to avoid errors when buttons are pressed
        '/create_wallet': (context) =>
            const Scaffold(body: Center(child: Text('Create Wallet Screen'))),
        '/import_wallet': (context) =>
            const Scaffold(body: Center(child: Text('Import Wallet Screen'))),
      },
    );
  }
}
