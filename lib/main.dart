import 'package:flutter/material.dart';
import 'package:simplonline_mobile/briefs.dart';
import 'package:simplonline_mobile/home_page.dart';
import 'package:simplonline_mobile/login.dart';
import 'package:simplonline_mobile/profile.dart';
import 'package:simplonline_mobile/rendu_page.dart';

void main() {
  runApp(const MyApp());
}

//customize color
MaterialColor simplonColor = const MaterialColor(
  0xFFCE0033, // Primary color value
  <int, Color>{
    50: Color.fromRGBO(206, 0, 51, 0.1),
    100: Color.fromRGBO(206, 0, 51, 0.2),
    200: Color.fromRGBO(206, 0, 51, 0.3),
    300: Color.fromRGBO(206, 0, 51, 0.4),
    400: Color.fromRGBO(206, 0, 51, 0.5),
    500: Color.fromRGBO(206, 0, 51, 0.6),
    600: Color.fromRGBO(206, 0, 51, 0.7),
    700: Color.fromRGBO(206, 0, 51, 0.8),
    800: Color.fromRGBO(206, 0, 51, 0.9),
    900: Color.fromRGBO(206, 0, 51, 1.0),
  },
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: simplonColor,
      ),
      home: const MyHomePage(title: 'Simplonline'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    Briefs(),
    RenduPage(),
    Profile(),
  ];

  void _incrementCounter() {
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          // return const Brief();
          return const HomePage();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floatingActionButton');
          Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const Login();
                            },
                          ),
                        );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      //Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.assignment_outlined), label: 'Briefs'),
          NavigationDestination(
              icon: Icon(Icons.install_desktop), label: 'Rendus'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index) {
          //one of aplication of StatefulWidget we use it to refresh the scren
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
