import 'package:flutter/material.dart';

import 'components/ActionButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //-------------------------
      //  BARRA DE NAVEGACION
      //-------------------------
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //FLECHA DE RETROSESO
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
            color: Colors.black),

        title: Text('Fine quiality', style: TextStyle(color: Colors.black),),
        centerTitle: true,

        //BOTON DE BUSQUEDA
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), onPressed: () {}, color: Colors.grey),
        ],
      ),

      //---------------------
      //CUERPO DEL SCAFFOLD
      //---------------------
      body: ListView(children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              height: 250.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Stack(
                        //CUADRO DONDE ESTA LA IMAGEN CON LOS PRECIOS
                        children: <Widget>[
                          //Imagen
                          Container(
                            height: 230.0,
                            width: MediaQuery.of(context).size.width * 2 / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/img4.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),

                          //Text
                          Positioned(
                            left: 15.0,
                            top: 130.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                //Nombre del postre
                                Text(
                                  'Honey Bread',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),

                                //Precio
                                Text(
                                  '\$88',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Quicksand',
                                    fontSize: 20.0,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  //ESPACIO
                  SizedBox(
                    width: 5.0,
                  ),

                  //COLUMNA CON BOTONES
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ActionButton(Icons.favorite, Colors.red, '368'),
                      ActionButton(Icons.chat_bubble, Colors.grey, '76'),
                      ActionButton(Icons.arrow_forward, Colors.grey, '18'),
                      
                    ],
                  )
                ],
              ))
        ])
      ]),
    );
  }
}
