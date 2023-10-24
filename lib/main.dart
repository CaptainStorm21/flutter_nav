import 'package:flutter/material.dart';

// first screen push()  second screen pop() ... first screen
void main(){
  runApp(
    const MaterialApp(
      title: 'App',
      home: FirstScreen()
    )
  );
}
class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App')
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SecondScreen())
            );
          },
          child: const Text('Go to screen 2')
        ),
      )
    );
  }
}

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar:  AppBar (title: const Text('2nd screen')),
      body:  Center(
        child: ElevatedButton(
          onPressed:(){
            Navigator.pop(context);
          },
          child: const Text('Go to screen 1')
      )),
    );
  }



}