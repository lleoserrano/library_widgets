import 'package:flutter/material.dart';
import 'package:library_widgets/library_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LibraryWidgets.outdoorLetters(
              value: 'Dev Leonardo Serrano Flutter',
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              textStyle: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            LibraryWidgets.autoCompletFade(
              keys: [
                'teste',
                'teste teste',
                'Teste agua',
                'Teste super',
                'teste almeida',
                'experiente',
                'experiente fluxo',
                'Porto',
                'Porto pedra',
                'Porto Pedra',
                'Porto Pedra Pereira Agua',
                'Preenchimento automatico de texto com fade como principal função'
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              controller: myController,
              textStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
