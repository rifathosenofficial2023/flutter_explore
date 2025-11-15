import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  bool switchState = false;
  bool checkState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, 
        leading: IconButton(onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        }, icon: Icon(Icons.account_circle)),
        title: const Text("learn everything"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
        elevation: 0,
        shadowColor: Colors.amber,
        
      ),
      body: Column(
        children: [
          Switch(
            value: switchState,
             onChanged: (value) {
            print(switchState);
            setState(() {
              switchState = !switchState;
            });
            
          },),
          Tooltip(
            message: "rifat",
            child: Checkbox(value: checkState, onChanged: (value) {
              setState(() {
                checkState = !checkState;
              });
            },),
          )
        ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
      ],
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.5),
      currentIndex: currentIndex,
      onTap:(index) {
        setState(() {
              print("You have clicked on $index");
              currentIndex = index;
        });
      },
      ),
      drawer:const Drawer(
        child: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(child: Text('Rifat Hosen')),
            Text('Home'),
            Text("Login"),
            Text('Logout')
          ],
        )
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('Iam end drawer'),
        ),
      ),
    );
  }
}