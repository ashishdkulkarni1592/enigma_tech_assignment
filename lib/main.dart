import 'package:EnigmaAssignement/ui/login/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'application/app.dart';
import 'common/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final di = Dependency()..initialise();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.inject<LandingPageProvider>(),
        ),
      ],
      child: di.inject<Application>(),
    ),
  );
}
