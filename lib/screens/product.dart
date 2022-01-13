import 'package:productapi/services/product_service.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getproduct(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: Text("No data"),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${snapshot.data[index].SKUId}"),
                    title: Text(snapshot.data[index].SKUName),
                    subtitle: Text(snapshot.data[index].salePrice),
                  );
                });
          }
        },
      ),
    );
  }
}
