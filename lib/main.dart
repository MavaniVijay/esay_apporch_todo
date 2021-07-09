import 'package:esay_apporch_todo/Screens/cart.dart';
import 'package:esay_apporch_todo/Screens/productlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/cartmodel.dart';

void main() => runApp(
      ChangeNotifierProvider<CartModel>(
          builder: (context) => CartModel(),
          create: null,
          child: MaterialApp(
            home: MyApp(),
          )),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Application'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MaterialButton(
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: ProductList(),
    );
  }
}

/*class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Application",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Application'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: FlutterLogo(),
              ),
              Text('Flutter Logo'),
            ],
          ),
        ),
      ),
    );
  }
}*/
