import 'package:flutter/material.dart';
import 'package:login_token/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text('Log In'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
  
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        //child: Column(
          
          children:[
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                     ),
                    labelText: 'Email',
                    ),
                  ), 

                  // SizedBox.fromSize(20),

                  TextFormField(
                    
                    controller: _password,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(),
                     ),
                    labelText: 'Password',
                    ),
                  ),
                ],
              ),     
              

            ),

            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                   ElevatedButton(
                    onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> home(email: _email.text, password: _password.text)
                    ),
                    );
                    }, child: Text('Log In')),

                    TextButton(
                      onPressed: (){},
                      child: const Text('Forgot Password?'),
                    ),

                  Center(
                    child: Row(  
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                      'Dont have an account?',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  
                    TextButton(
                        onPressed: (){},
                        child: const Text('Create one'),
                      ),
                  
                                  ],
                                  ),
                  ), 


                ],
              ),
                
              ),

              TextButton(
                      onPressed: (){},
                      child: const Text('Manage Subscriptions'),
                    ),





              



          
              
              // Column(
              //   children: [
              //     TextButton(
              //         onPressed: (){},
              //         child: const Text('Forgot Password?'),
              //       ),


              //   ],
              // ),

              
                //Center(
                  //children: [

                // start Row(  
                //   children: [
                //     Text(
                //     'Dont have an account?',
                //     style: TextStyle(
                //       color: Colors.grey[500],
                //     ),
                //   ),

                //   TextButton(
                //       onPressed: (){},
                //       child: const Text('Create one'),
                //     ),

                // ],
                // ),  
  
          ],
        ),
      );

  }
}
