
import 'package:flutter/material.dart';
import 'package:prd/coundernotifier.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
   
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final counterData = Provider.of<CounterNotifier>(context , listen : false); 
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterNotifier>(
              builder: (context, data, _) {
                return Text(
                  counterData.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterData.Increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
