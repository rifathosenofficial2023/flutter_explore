import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Column(
               children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.network("https://picsum.photos/200", height: 100, errorBuilder: (_,__,___){
                    return Icon(Icons.image, size: 50,);
                  },),
                ),
                Text("Random Image Profile")
              ],
            ))
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
       body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white
              ),
              onPressed: (){}, 
              child: const Text("Button")),
          )
        ],

       ),
    );
  }
}