import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});
  String email, password;

  HomeScreen({required this.email, required this.password});

  

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        
        title: Text('HomeScreen'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
 
      ),
                   
      body: Column(
        
        children : [
          Text('Email: ${email}'),
          Text('Password: ${password}'),
        ]

      ),
    );
  }
}