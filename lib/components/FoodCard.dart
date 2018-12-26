import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String name;
  final String origin;
  final String cardImage;
  final int likes;
  final int commentCount;
  final int cardIndex;

  FoodCard(this.name, this.origin, this.cardImage, this.likes,
      this.commentCount, this.cardIndex);

  @override
  _FoodCardState createState() => _FoodCardState(this.name, this.origin,
      this.cardImage, this.likes, this.commentCount, this.cardIndex);
}

class _FoodCardState extends State<FoodCard> {
  String name;
  String origin;
  String cardImage;
  int likes;
  int commentCount;
  int cardIndex;

  _FoodCardState(this.name, this.origin, this.cardImage, this.likes,
      this.commentCount, this.cardIndex);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardIndex
              .isEven //Da padding derecho a los de la derecha y padding izquierdo a los de la izquierda
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            style: BorderStyle.solid,
            width: 1.0,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //IMAGEN
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      //curvea solo las esquinas de la Card
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.cardImage),
                        fit: BoxFit.cover,
                      )),
                ),

                //INFORMACION DEL POSTRE
                //NOMBRE
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),

                //ORIGEN
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    widget.origin,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 3.0),

                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: <Widget>[
                      //NUMERO DE FAVORITOS
                      Icon(
                        Icons.favorite,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        widget.likes.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      SizedBox(width: 10.0),

                      //NUMERO DE COMENTARIOS
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        widget.commentCount.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      )

                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                //BOTON DE ANIADIR AL CESTO
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber),
                child: Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
