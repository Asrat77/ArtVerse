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
      home: const MyHomePage(title: 'Art Auction'),



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
              Image(image: AssetImage(art.imageUrl),
              height: 300,
              width: 300,),
            ),

            const SizedBox(
              height: 18.0,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black54,
                  child: Text(art.description,
                  style: const TextStyle(
                    color: Colors.white70
                  ),),
                )

              ],
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red.withOpacity(0.04);
                        }
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return Colors.red.withOpacity(0.12);
                        }
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: const Text("Place a bid",
                  style: TextStyle(
                    color: Colors.black54
                  ),)
                  ),
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: TextButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.red.withOpacity(0.04);
                        }
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return Colors.red.withOpacity(0.12);
                        }
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  child: const Text("Add to list",
                    style: TextStyle(
                        color: Colors.black54
                    ),)
              ),
            ),
          ],
        ),
      ),
    );





  }

}

