import 'package:flutter/material.dart';
import 'package:library_widgets/library_widgets.dart';
import 'package:library_widgets/widgets/card_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
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
        child: SingleChildScrollView(
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
              const Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 50,
              ),
              LibraryWidgets.cardMessage(
                body: const Text('Hey my friend'),
                backgroundColor: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
                positionHorizontalTriangle: PositionHorizontalTriangle.right,
                positionVerticalTriangle: PositionVerticalTriangle.top,
                circleAvatar: const CircleAvatar(
                  maxRadius: 16,
                  child: FlutterLogo(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              LibraryWidgets.cardMessage(
                body: const Flexible(
                  flex: 10,
                  child: Text(
                    '-Hey my friend-Hey my friend i need test a big message-Hey my friend-Hey my friend-Hey my friend  my friend-Hey my friend-Hey my friend-Hey my friend\n-Hey my friend-Hey my friend-Hey my friend-Hey my friend-Hey my friend\n-Hey my friend-Hey my friend-Hey my friend-Hey my friend-Hey my friend\n',
                  ),
                ),
                maxHeight: double.infinity,
                backgroundColor: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
                positionHorizontalTriangle: PositionHorizontalTriangle.left,
                circleAvatar: const CircleAvatar(
                  maxRadius: 16,
                  child: FlutterLogo(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              LibraryWidgets.cardMessage(
                body: const Text('Hey my friend'),
                backgroundColor: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
                positionHorizontalTriangle: PositionHorizontalTriangle.right,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
