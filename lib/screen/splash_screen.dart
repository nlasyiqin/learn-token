import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> { 
  @override
  void iniState() async{
    super.initState();
    goToHome();

    // await Future.delayed(sonst Duration(seconds: 1), () {
    //   Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(builder: (context) => const home()),
    //     (Route<dynamic> route) => false,
    // );

    // });
    }

    void goToHome() async {
      await Future.delayed(sonst Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const home()),
        (Route<dynamic> route) => false,
    );

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

            //letak image

            Image.asset(
              "assets/images/logo.png",
              width: 50,
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