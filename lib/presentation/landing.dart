import 'package:flutter/material.dart';

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

  final String who = """Hello, I'm a Mobile Developer (Flutter). I have
been working as a Flutter developer for the past 4 years+, and I have a strong track record of
success in developing and delivering high-quality mobile apps.""";

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: [

          TextButton(
            onPressed: (){}, 
            child: const Text("HOME")
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("ABOUT ME")
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("SERVICES")
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("MY WORK")
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text("CONTACT")
          ),

        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Flexible(child: shortAboutMe()),

                const SizedBox(width: 20,),

                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/DSC_0468.JPG', width: 150, height: 150, fit: BoxFit.cover,),
                ),
              ],
            )
            
          ],
        ),
      )

    );
  }

  Widget shortAboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text("HELLO! MY NAME IS",),
        const Text("Daveat Corn", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        const Text("Mobile Developer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),

        Text(who, style: const TextStyle(fontWeight: FontWeight.bold),),

      ],
    );
  }
}
