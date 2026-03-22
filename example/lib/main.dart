import 'package:flutter/material.dart';
import 'package:free_droid_warn/free_droid_warn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FreeDroidWarn Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Show the warning dialog once when the app starts (version code 1).
    // In a real app you would pass your BuildConfig.VERSION_CODE here.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FreeDroidWarn.showWarningOnUpgrade(context, 1);
    });

    return Scaffold(
      appBar: AppBar(title: const Text('FreeDroidWarn Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => FreeDroidWarn.showWarningOnUpgrade(context, 1),
          child: const Text('Show Warning Dialog'),
        ),
      ),
    );
  }
}
