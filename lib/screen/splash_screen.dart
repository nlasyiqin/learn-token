import 'package:flutter/material.dart';
import 'package:login_token/main.dart';
import 'package:login_token/screen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  final String ? emailSplashScreen;
  final String ? passwordSplashScreen;
  const SplashScreen({super.key,required this.emailSplashScreen, required this.passwordSplashScreen});
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> { 
  @override
  void initState() {
    // TODO: implement initState
    goToHome(); 
    super.initState();
  }
 
    //start
     goToHome() async {
      await Future.delayed(const Duration(seconds: 5), () {
        if(widget.emailSplashScreen!.isNotEmpty && widget.passwordSplashScreen!.isNotEmpty) {
          Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen(email: widget.emailSplashScreen.toString(), 
        password: widget.passwordSplashScreen.toString())),
        (Route<dynamic> route) => false,
    );
        }
        else{
           Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
        (Route<dynamic> route) => false,
    );
          

        }
      



    });
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/logo1.png',
              width: 5100,
            ),

            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const SizedBox(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                      backgroundColor: Colors.amberAccent,
                      strokeWidth: 2.0,

                    ),
                    width: 24,
                    height: 24,

                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(' Loading..',
                    style: TextStyle( 
                      color: Colors.black,              
                      fontSize: 18,
                    ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}