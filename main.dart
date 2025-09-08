import 'package:flutter/material.dart';

/* the purpose of this syntax is to i,port flutter material design library
tools for building the material design ui (google design system)

import - dart keyword to include external libraries

package:flutter - refers t the material package that comes with flutter

this is essential for building flutter apps w/ a standard ui.
* */
void main() { // entry point od s flutter app
  runApp( const MyApp()); //runApp() that initialize the app and attach the root widget(MyAoo) to the screen,
  //const - creates an instance of the MyApp widget, that marked cont for compile-time (immutable)
}

class MyApp extends StatelessWidget {
  //MyApp is a custom class that extends StatelessWidget
  //StatelessWidget - base class for widgets that do not hold mutable state
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // app structure
      title: 'Hello Flutter',
      theme: ThemeData( //primary color palette
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(), // initial screen
    );
  }



  
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Daniela Rose C. Samonte"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset('assets/sirtaposnapo.jpg',
          width: 500,
          height: 200,),
          const SizedBox(height: 5),
          const Text(''
            '==MASAHISTA==',
            style:TextStyle(fontSize: 50),
          ),
          Text('Masahista is a 2005 Filipino drama film about Iliac, '
              'a young man working as a masseur in Manila who provides sexual '
              'services to his gay clientele. The film intertwines his experiences '
              'as a sex worker with his family life, particularly his fathers recent '
              'death and the subsequent preparation for the funeral. The story highlights '
              'themes of poverty, exploitation, and the complexities of reconciling his illegal work '
              'with his familial responsibilities, using a documentary-style approach with visual parallels'
              ' between his professional and private life. ',
            textAlign: TextAlign.center,style:TextStyle(fontSize: 30),
          )
        ],
      ),
    ),
  );
  }

}


