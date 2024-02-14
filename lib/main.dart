// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: products_(),
//     );
//   }
// }
// class products_ extends StatefulWidget {
//   const products_({super.key});

//   @override
//   State<products_> createState() => _products_State();
// }

// class _products_State extends State<products_> {
//   final List<String> pic=["assets/apple.png"];
//   final List<String> name=["apple"];
//   final List<String> unit=["kg"];
//   final List<String> price=["120"];
//   final List<String> last=["Add to cart"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Icon(Icons.shopping_cart),
//         ],
//         backgroundColor: Colors.blue[700],
//        title: Text("Product List",style: TextStyle(color: Colors.white,
//        fontWeight: FontWeight.bold,fontSize: 20),
       
//        ), 
//       ),
//       body: ListView.builder(
//         itemCount: pic.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//         return ListTile(
//           leading:Image.asset(pic[index]),
//           title: Text(name[index]),
//           subtitle: Column(
//             children: [
//              Text(unit[index]) ,
//              Text(price[index])
//             ],
//           ),
//           trailing: Text(last[index])
//         );
//       },),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter/src/rendering/box.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Products(),
//     );
//   }
// }

// class Products extends StatefulWidget {
//   const Products({Key? key});

//   @override
//   State<Products> createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   final List<String> pic = ["assets/apple.png"];
//   final List<String> name = ["apple"];
//   final List<String> unit = ["kg"];
//   final List<String> price = ["120"];
//   final List<String> last = ["Add to cart"];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Icon(Icons.shopping_cart),
//         ],
//         backgroundColor: Colors.blue[700],
//         title: Text(
//           "Product List",
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//       ),
//       body: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SizedBox(
//             child: ListView.builder(
//               itemCount: pic.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   leading: Image.asset(pic[index],cacheWidth: 20,cacheHeight: 20,), 
//                   title: Text(name[index],style: TextStyle(color: Colors.black),),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(unit[index],style: TextStyle(color: Colors.black),),
//                       Text(price[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//                   trailing: Text(last[index],style: TextStyle(color: Colors.black),),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'NewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Products(),
    );
  }
}

class Products extends StatefulWidget {
  const Products({Key? key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<String> pic = ["assets/apple.png",'assets/kiwi.png','assets/orange.png','assets/watermelon.png'];
  final List<String> name = ["Name:apple","Name:kiwi","Name:orange","watermelon"];
  final List<String> unit = ["Unit:kg","Unit:kg","Unit:kg","Unit:kg",];
  final List<String> price = ["Price:120","Price:120","Price:120","Price:120",];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.shopping_cart),
        ],
        backgroundColor: Colors.blue[700],
        title: Text(
          "Product List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: pic.length,
      
        itemBuilder: (context, index) {
          return
           Card(
             child: ListTile(
              leading: Image.asset(
                pic[index],
                
              ),
              title: Text(
                name[index],
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    unit[index],
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    price[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              trailing: SizedBox(
                height: 30,
                width: 100,
                child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blue[700]),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => NewScreen())) );
                }, child: Text("Add to cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),)),
              )
                           ),
           );
        },
      ),
    );
  }
}

