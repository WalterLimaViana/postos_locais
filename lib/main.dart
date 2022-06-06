import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:postos_local/pages/postos_page.dart';
import 'package:postos_local/repositories/postos_repository.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(
    ChangeNotifierProvider<PostosRepository>(
      create: (_) => PostosRepository(),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Postos TicketLog Icomon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: PostosPage(),
    );
  }
}
