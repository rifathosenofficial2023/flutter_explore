import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, 
        leading: IconButton(onPressed: (){

        }, icon: Icon(Icons.menu)),
        title: const Text("learn everything"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
        elevation: 0,
        shadowColor: Colors.amber,
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      elevation: 0,
      backgroundColor: Colors.blue,
      tooltip: 'Open Camera',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Icon(
        Icons.camera_alt_rounded,
        color: Colors.white,
      ),
      ),
    );
  }
}