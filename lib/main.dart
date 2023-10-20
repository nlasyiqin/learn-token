import 'package:flutter/material.dart';
import 'package:login_token/screen/homescreen.dart';
import 'package:login_token/screen/splash_screen.dart';

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
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text('Log In'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
  
        
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
      
          //child: Column(
            
            children:[
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null|| value.isEmpty ) {
                          return 'Please enter your email';
                        }
                      },
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
                      validator: (value) {
                        if (value == null|| value.isEmpty ) {
                          return 'Please enter your password';
                        }
                      },
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
                        if (_formKey.currentState!.validate()){
                          Navigator.of(context).push(MaterialPageRoute(builder: 
                          (context)=> SplashScreen(passwordSplashScreen: _password.text, emailSplashScreen: _email.text)
                          //kat dlam splashscreen tu, tk perlu ada semua detail pun. tpi in this case, kena ada both pass and email sebb dua dua required. 
                      ));

                        } else{
                          ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please enter your email and password')),
      );
                        }
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
     
                     
                    
                      
                      
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
      ),
      );

  }
}
