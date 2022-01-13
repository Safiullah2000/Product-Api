class ProductModel {
  String? count;
  List<ProductDetail>? productDetail;

  ProductModel({this.count, this.productDetail});
}

class ProductDetail {
  int? RowId;
  int? SKUId;
  String? SKUName;
  int? SKUCatId;
  String? Category;
  int? SKUSubCatId;
  String? Sub_Category;
  String? SKURemarks;
  String? SKUActive;
  int? SalePrice;
  int? RetailPrice;
  int? SKUDiscPerc;
  String? SKUImageURL1;

  ProductDetail(
      {this.RowId,
      this.SKUId,
      this.SKUName,
      this.SKUCatId,
      this.Category,
      this.SKUSubCatId,
      this.Sub_Category,
      this.SKURemarks,
      this.SKUActive,
      this.SalePrice,
      this.RetailPrice,
      this.SKUDiscPerc,
      this.SKUImageURL1});
}
