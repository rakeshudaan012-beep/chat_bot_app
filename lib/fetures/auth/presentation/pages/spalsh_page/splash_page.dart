import 'dart:async';

import 'package:chat_bot/fetures/auth/presentation/pages/intial_page/initial_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>InitialPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit,size: 35,),
                Text('Chat Bot',style: TextStyle(fontSize: 25,color: Colors.amber),),
                SizedBox(
                  height: 15,
                ),
                CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.amber,
                )
              ],
                  ),
          )),
    );
  }
}
