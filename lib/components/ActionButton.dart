import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final int timesClicked;

  ActionButton(this.icon, this.color, this.timesClicked);

  @override
  _ActionButtonState createState() => _ActionButtonState(this.icon, this.color, this.timesClicked);
}

class _ActionButtonState extends State<ActionButton> {
  IconData icon;
  Color color;
  int timesClicked;

  _ActionButtonState(this.icon, this.color, this.timesClicked);  
  
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(7.0),
      elevation: 2.0,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //Icono del Boton
            Icon(
              //Icons.favorite,
              widget.icon,
              color: widget.color,
            ),

            //Numero de veces clickeado
            Text(
              widget.timesClicked.toString(),
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Quicksand',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
