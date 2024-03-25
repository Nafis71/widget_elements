import 'package:flutter/material.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://help.nflxext.com/0af6ce3e-b27a-4722-a5f0-e32af4df3045_what_is_netflix_5_en.png"),fit: BoxFit.fitHeight,
          )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 250,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3,
                          blurRadius: 15,
                          offset: const Offset(0, 3),
                          blurStyle: BlurStyle.normal,
                        )
                      ],
                      image: const DecorationImage(
                          image: NetworkImage("https://ph-test-11.slatic.net/p/506f5d3c8580c573827a9a1e5dab683a.jpg"),fit: BoxFit.fill
                      )
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                          height: 33,
                          width: 110,
                          child:  Padding(padding: const EdgeInsets.fromLTRB(0,0,0,3),
                            child: ElevatedButton(onPressed:(){},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 2,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(Icons.play_arrow,color: Colors.black,size: 18,),
                                    Text("Play",style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700
                                    ),),
                                  ],
                                )),
                          )
                      ),
                      SizedBox(
                          height: 33,
                          width: 110,
                          child:  Padding(padding: const EdgeInsets.fromLTRB(0,0,0,3),
                            child: ElevatedButton(onPressed:(){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black54,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    elevation: 2
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(Icons.add,color: Colors.white,size: 18,),
                                    Text("MyList",style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),
                                  ],
                                )),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(15,10,0,2),
              child: Text("Recently Added",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
            ),
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
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0,1),
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
                          borderRadius: BorderRadius.circular(10),
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
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0,1),
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
                          borderRadius: BorderRadius.circular(10),
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
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0,1),
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
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(15,10,0,2),
              child: Text("Popular Anime",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 120,
                  height: 170,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color:Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        ),
                      ],
                      image: DecorationImage(
                        image: const NetworkImage("https://images-cdn.ubuy.co.in/633ff1157e3fbc25557517c8-one-piece-poster-japanese-anime-posters.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.9),
                            BlendMode.dstATop),
                      )
                  ),
                ),
                Container(
                  width: 120,
                  height: 170,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color:Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        ),
                      ],
                      image: DecorationImage(
                        image: const NetworkImage("https://m.media-amazon.com/images/M/MV5BZDZiZTZhMzgtYTY0ZC00OGUyLWE2NzgtMmM4MjA1YjUxN2YyXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg"),fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
                            BlendMode.dstATop),

                      )
                  ),
                ),Container(
                  width: 120,
                  height: 170,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(color:Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0,3),
                        ),
                      ],
                      image:  DecorationImage(
                          image: const NetworkImage("https://m.media-amazon.com/images/M/MV5BM2M2NDIzOTItZDA1Yy00M2Q4LTk3ZjctZjZmZjUyZWMxM2YyXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_.jpg"),fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9),
                              BlendMode.dstATop)
                      )
                  ),
                ),
              ],
            ),

          ],
        ) ,
      )
    );
  }
}
