import 'package:esay_apporch_todo/Screens/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ProductList extends StatelessWidget {
  final products = List<String>.generate(
    20,
    (i) {
      return "Product No. $i";
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              products[index],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            onTap: () {
              //Code
              Provider.of<CartModel>(context, listen: false)
                  .add(products[index]);

              SnackBar s = SnackBar(
                content: Text(
                  'Products No. $index is Added',
                ),
                duration: Duration(milliseconds: 100),
              );
              Scaffold.of(context).showSnackBar(s);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
