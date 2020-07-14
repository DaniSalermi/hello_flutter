import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 35.00, left: 10.0),
      color: Colors.deepOrangeAccent,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Margarita",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )),
              Expanded(
                  child: Text(
                "Tomate, Queso Mozzarella, Albahaca",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                "Marinara",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )),
              Expanded(
                  child: Text(
                "Tomate, Ajo",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Oxygen',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ))
            ],
          ),
          PizzaImageWidget(),
          OrderButton(),
        ],
      ),
    ));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza_logo.png');
    Image image = Image(
      image: pizzaAsset,
      width: 300.0,
      height: 300.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Ordenar pizza"),
        color: Colors.amber,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Orden completada"),
      content: Text("Gracias por tu compra!"),
    );
    showDialog(context: context, builder: (BuildContext context) => alert);
  }
}
