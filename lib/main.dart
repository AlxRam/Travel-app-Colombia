import 'package:flutter/material.dart';
import 'package:travel_app/models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel app',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MenuTravel(),
    );
  }
}

class MenuTravel extends StatelessWidget {
  const MenuTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double labelWidth = MediaQuery.of(context).size.width * .25;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.purple.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://img.freepik.com/vector-gratis/ilustracion-palabra-colombia_1284-61355.jpg?w=1800&t=st=1663453705~exp=1663454305~hmac=90c799ca0f350357c0ad80e1ae0f805340d375277e930ee9f055f47c738ab926'),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  upperButtons('Places', labelWidth),
                  upperButtons('Atractions', labelWidth),
                  upperButtons('Hotels', labelWidth),
                ],
              ),
            ),
            Text("Meet best places in Colombia!",
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: <Color>[
                          Colors.yellow,
                          Colors.blue,
                          Colors.red
                          //add more color here.
                        ],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 350.0, 100.0)
                      )
                )
            ),
            SizedBox(height: 20),
            GridView.builder(
                itemCount: datalist.length,
                //el never scrolleable, sirve para que el gridview no genere un scrolleable independiente
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, index) => miCardImage(index)
            )
          ]
        )
      )
    );
  }

  //Method for upperbuttons
  Container upperButtons(String name, double width) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          color: Colors.purple.shade700,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  //Method for card
  Card miCardImage(int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias, //Para que no se raye feo
        color: Colors.purple.shade700,
        margin: EdgeInsets.all(5),
        elevation: 10,
        child: Stack(
          children: [
            //Con ink.image cuadra a como de lugar la imagen, es una decoracion
            //ink.image pone menos pereque que el image normalito, jugar con fill y cover
            //le mete el efecto splash del inkwell
            Ink.image(
                image: NetworkImage(datalist[index].cityImage),
                fit: BoxFit.fill,
                child: InkWell( onTap: (){}),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: const Color(0xFF0E3311).withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          datalist[index].cityName,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
                      ),
                    ),
                  ),
                )
            )
          ],
        ),

        //Recorta la parte de arriba
        // child: ClipRRect(
        //   borderRadius: BorderRadius.circular(15),
        //   child: Column(
        //     children: <Widget>[
        //       Image(image: NetworkImage(datalist[index].cityImage)),
        //       Container(
        //         padding: EdgeInsets.all(10),
        //         child: Text(datalist[index].cityName, style: TextStyle(color: Colors.white),),
        //       ),
        //     ],
        //   ),
        // )
    );
  }
}
