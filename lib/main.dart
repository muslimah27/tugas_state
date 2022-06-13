import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muslimah Tugas State Management TI-IS 1/4',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/awal',
      routes: {
        '/awal': (context) => const MyHomePage(title: 'HOME PAGE'),
        '/halaman1': (context) => const FirstPage(title: 'FIRST PAGE'),
        '/halaman2': (context) => const SecondPage(title: 'SECOND PAGE'),
        '/halaman3': (context) => const ThirdPage(title: 'THIRD PAGE'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              const Text(
                'Jumlah ketika tombol ditekan:', style: TextStyle(fontSize: 24)
              ),
              const SizedBox(height: 30),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 50),
              const Text(
                'Silahkan pilih halaman di bawah ini:', style: TextStyle(fontSize: 24)
              ),
              const SizedBox(height: 20),

            Row(children: [
               ButtonBar(
                children: [
                  
                  ElevatedButton(
                    child: const Text('1'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman1',
                      arguments: Info('$_counter'));
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('2'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman2',
                      arguments: Info('$_counter'));
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('3'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/halaman3',
                      arguments: Info('$_counter'));
                    },
                  ),
                  
                ]
              ),
            ],) 

            ],
            
          ),
        
        ),
        
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        splashColor: Colors.pink,
        tooltip: 'Ini tombol',
        child: const Icon(Icons.add),
      ),
      
    );
  }
}

class Info {
  final String count;
  Info(this.count);
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 80, color: Color.fromARGB(255, 43, 81, 100))),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 80, color: Color.fromARGB(255, 43, 81, 100))),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Info;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(args.count,
                style: const TextStyle(fontSize: 80, color: Color.fromARGB(255, 43, 81, 100))),
          ),
        ],
      ),
    );
  }
}