import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:PR5/main1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PR5',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'PR5'),
        '/second': (context) => SecondPage(title: 'PR5'),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String savedString = "";
  late SharedPreferences sharedPreferences;


  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    initShared().then((value) {
      savedString = sharedPreferences.getString('savedString') ?? ""; });
    super.initState();}
  @override
  Widget build(BuildContext context) {
    String takedString =
        (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(' $savedString $takedString'),
            TextFormField(
              controller: _controller, ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second',
                      arguments: _controller.text);
                  sharedPreferences.setString("savedString", _controller.text);
                },
                child: Text("Вперед")),
          ],
        ),
      ),
    );
  }
}
