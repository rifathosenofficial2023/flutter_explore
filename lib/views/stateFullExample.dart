import 'package:flutter/material.dart';

class Statefullexample extends StatefulWidget {
  const Statefullexample({super.key});

  @override
  State<Statefullexample> createState() => _StatefullexampleState();
}

class _StatefullexampleState extends State<Statefullexample> {

  var name = "hosen";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("StateFull"),
      ),
      body: Center(
        child: Text("Hello Rifat $name"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            name = 'world';
            print('new value $name');
          });
        }
        , child: const Icon(Icons.restart_alt),
        ),
    );
  }
}