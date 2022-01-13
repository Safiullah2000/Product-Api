import 'dart:convert';

import 'package:productapi/model/product_model.dart';
import 'package:productapi/screens/product.dart';
import 'package:http/http.dart' as http;

getproduct() async {
  var response = await http
      .get(Uri.parse("https://www.dubaisuperstore.com.pk//myapi//product"));
  var jsonData = jsonDecode(response.body);

  List<ProductDetail> Products = [];

  for (var i in jsonData) {
    ProductDetail product = ProductDetail(
      RowId: i["RowId"],
      SKUId: i["SKUId"],
      SKUName: i["skuName"],
      SKUCatId: i["SKUCatId"],
      Category: i["Category"],
      SKUSubCatId: i["SKUSubCatId"],
      SKURemarks: i["SKURemarks"],
      SKUActive: i["SKUActive"],
      SalePrice: i["salePrice"],
      RetailPrice: i["RetailPrice"],
      SKUDiscPerc: i["SKUDiscPerc"],
      SKUImageURL1: i["SKUImageURL1"],
    );
    Products.add(product);
  }
  return Products;
}
