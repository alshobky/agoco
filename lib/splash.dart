
import 'package:flutter/material.dart';

import 'home3.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(seconds: 3),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const home3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('data'),),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/agocob.png"),
              fit: BoxFit.cover,
            ),
          ),
          //
        ),
      ),
    );
  }




}
