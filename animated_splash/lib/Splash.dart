
import 'package:animated_splash/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import "package:flutter/material.dart";



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSplashScreen(splash: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
           // ignore: sized_box_for_whitespace
           Center(
             // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
             child: Container(
               child: FittedBox(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                fit: BoxFit.fill,
                child: Image.asset("assets/images/logo.png"),
                ),
             ),
           ),      
              ],      
          
        ), nextScreen: Home(),
         backgroundColor: const Color.fromARGB(255, 24, 1, 38),
        splashIconSize: 550,
        duration: 1500,
       // splashTransition: SplashTransition.rotationTransition,
        
        ),
        // ignore: sized_box_for_whitespace
        // Container(
        //   margin: const EdgeInsets.all(50),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: const [
        //           Center(
        //             child: Text("Chef in the Chicken ", 
        //    style: TextStyle(
        //              fontSize: 25,
        //    fontWeight: FontWeight.bold,
      
        //             ),),
        //           ),
        //         ],
        //       ),
        //     )
           
        ],
      ),
    );
    
  }
}