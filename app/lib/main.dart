// main.dart



//import 'package:flutter/material.dart';
//import 'package:app/list_view.dart'; 
//import 'package:app/onboarding_screen.dart';  
//import 'package:app/grid_view_valley.dart';  
//import 'package:app/practice.dart';
//  'package:app/login.dart';
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const LoginScreen(),import
      //home: const GridViewValley()
      // home: const OnboardingPage(),
      //home: const ListViewScreen()
      //home: const GridViewValley(),
      //home: const ListViewBuilder(),
      
   // );
  //}
//}




// import 'package:flutter/material.dart';
// import 'screens/home_screen.dart'; 
// import 'widgets/app_bar.dart';                
// import 'widgets/bottom_navigation_bar.dart'; 
// import 'widgets/video_card.dart';             

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),

      
//       home: const HomeScreen(), 
//       debugShowCheckedModeBanner: false,
      
      
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar( ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const SizedBox(height: 20), 
            
//             VideoCard(title: 'My Video'),
//             VideoCard(title: 'Another Video'),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(), 
//     );
//   }
// }




// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: OrderPage(),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// // import 'package:app/order.dart';  // Adjust if the import path is incorrect

// void main() {
//   runApp(MyApp());  // This runs the MyApp class when the app starts
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Restaurant Order',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//         // Home is the OrderPage widget imported from order.dart
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:app/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginScreen(),
    );
  }
}
