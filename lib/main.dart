import 'package:flutter/material.dart';
import 'art.dart';

void main() {
  runApp(const auctionApp());
}

class auctionApp extends StatelessWidget {
  const auctionApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Art Auction',
        theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,



      ),
        ),
      home: const MyHomePage(title: 'Home'),



    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF1A1717),
        appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(widget.title),
        ),
      body: SafeArea(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Art.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return buildArtCard(Art.samples[index]);





    }


        ),
      ),
    );


  }

  Widget buildArtCard(Art art){

    return Card(
      elevation: 2.0,
      color: Colors.black54,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child:
              Image(image: AssetImage(art.imageUrl)),
            ),

            const SizedBox(
              height: 14.0,
            ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               Container(

                 height: 30,
                 width: 100,
                 color: Colors.black54,
                 child: const Text("Current Bid",
                 style: TextStyle(
                   color: Colors.grey
                 ),),

               ),
               Container(


                 height: 30,
                 width: 100,
                 color: Colors.black54,
                 child: const Text("Release Date",
                 style: TextStyle(
                   color: Colors.grey
                 ),),

               ),
               Container(
                 height: 30,
                 width: 100,
                 color: Colors.black54,
                 child: const Text("Bid Deadline",
                 style: TextStyle(
                   color: Colors.grey
                 ),),

               ),



             ],
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(

                  height: 30,
                  width: 100,
                  color: Colors.black54,
                  child: Text(art.currentBid.toString(),
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15
                    ),),

                ),
                Container(


                  height: 30,
                  width: 100,
                  color: Colors.black54,
                  child: Text(art.releaseDate,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15
                    ),),

                ),
                Container(
                  height: 30,
                  width: 100,
                  color: Colors.black54,
                  child: Text(art.deadLine,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 15
                    ),),

                ),



              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.black54,
                  child: const Text("Description",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      decoration: TextDecoration.underline
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );



  }

}

