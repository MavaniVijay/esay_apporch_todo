import 'package:esay_apporch_todo/Screens/cartmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: IconButton(
            //   icon: Icon(Icons.arrow_back),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 80,
                color: Colors.blue,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Cart Items',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Consumer<CartModel>(builder: (context, cart, child) {
            return Expanded(
              child: ListView.separated(
                itemCount: cart.selectedProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      cart.selectedProducts[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
            );
          })
        ],
      ),
    );
  }
}
