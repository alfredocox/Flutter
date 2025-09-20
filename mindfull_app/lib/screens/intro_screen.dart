import 'package:flutter/material.dart';
import 'package:mindfull_app/screens/settings_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  static const String messageTxt = """
  The Widget that overrides build method will Define:
    - Content of the application
    - Structure of the application
    - Stacked Content
    - Possitioning of each Widget in the screen 
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Mountain.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Align(
            alignment: Alignment(0, -0.5),
            child: Text( messageTxt, //'build Widget ayuda al display de la pantalla y el Scaffold class es el Layout de la applicacion, separando contenido entre la estructura de la pantalla y lo que debe llevar',
                          style: TextStyle(
                            color: Colors.black87,
                            shadows: [Shadow(
                              blurRadius: 10.0,
                              color: Colors.blueGrey,
                              offset: Offset(2.0, 2.0),
                            )],
                            fontSize: 24),
                            ),),
          Align(
            alignment: const Alignment(0, 0.5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => SettingsScreen())
                  );
              }, 
              child: const Text("Start")),
          )
          ]
      ),
      );
  }
}