import 'package:flutter/material.dart';

class home extends StatelessWidget {
  //const home({super.key});
  String email, password;

  home({required this.email, required this.password});



  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
 
      ),

      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children : [
          Text('Email: ${email}'),
          Text('Password: ${password}'),
        ]

      ),
    );
  }
}