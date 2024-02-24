import 'package:flutter/material.dart';
import 'package:flutterfire_ui/i10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../features/auth/auth_gate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Awesome App',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
        Locale('pl', ''),
      ],
      theme: ThemeData.dark(),
      home: const AuthGate(),
    );
  }
}
