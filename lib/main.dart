import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WidgetApp',
        home: const Home(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade200),
          useMaterial3: true,
        ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: const Color(0x44000000),
        leading: const Icon(Icons.local_movies,color: Colors.white,),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://nnmedia.nation.africa/uploads/2021/05/Netflix.jpeg"),fit: BoxFit.cover
            )
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            print("Pressed Shopping cart");
            }, icon: const Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){
            print("Pressed Search Button");
          }, icon: const Icon(Icons.shopping_basket,color: Colors.white,))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  width: 120,
                  height: 150,
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color:Colors.red.shade900,width: 1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0,3),
                    ),
                  ],
                  image: DecorationImage(
                    image: const NetworkImage("https://i.pinimg.com/736x/be/63/96/be6396378d656325093f62ec5966392b.jpg"),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.9),
                        BlendMode.dstATop),
                  )
                ),
              alignment: Alignment.bottomCenter,
                  child:  Padding(padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text("Recently Added",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),),
                    ),
                  )
              ),
              Container(
                  width: 120,
                  height: 150,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color:Colors.red.shade900,width: 1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        ),
                      ],
                      image: DecorationImage(
                          image: const AssetImage("images/avengers.jpg"),fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
                            BlendMode.dstATop),

                      )
                  ),
                  alignment: Alignment.bottomCenter,
                  child:  Padding(padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text("Recently Added",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),),
                    ),
                  )
              ),Container(
                  width: 120,
                  height: 150,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color:Colors.red.shade900,width: 1),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        ),
                      ],
                      image:  DecorationImage(
                          image: const AssetImage("images/madameWeb.jpg"),fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
                              BlendMode.dstATop)
                      )
                  ),
                  alignment: Alignment.bottomCenter,
                  child:  Padding(padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text("Recently Added",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
