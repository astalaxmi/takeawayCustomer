class ProductsListModel {
  List<Data>? data;
  String? responseCode;
  String? responseMessage;

  ProductsListModel({this.data, this.responseCode, this.responseMessage});

  ProductsListModel.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    responseCode = json['ResponseCode'];
    responseMessage = json['ResponseMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['ResponseCode'] = responseCode;
    data['ResponseMessage'] = responseMessage;
    return data;
  }
}

class Data {
  String? discountValue;
  String? discountFlag;
  String? offerType;
  dynamic decrementFlag;
  dynamic productId;
  String? productName;
  String? productSmallImg;
  bool? wishlistFlag;
  bool? subscriptionFlag;
  String? productDescription;
  List<PriceList>? priceList;
  // List<Null>? cartList;
  bool? availabilityFlag;
  dynamic productMRP;
  dynamic pWeight;
  dynamic pWeightType;
  dynamic pSalePrice;
  dynamic prodPriceId;
  dynamic qty;
  dynamic minValue;
  dynamic maxValue;
  dynamic aboutProduct;
  dynamic productBenefits;
  dynamic storageUses;
  dynamic otherProductInfo;
  dynamic variableWeight;
  dynamic weightDetails;
  dynamic wPrice;
  dynamic wMRP;

  Data(
      {this.discountValue,
      this.discountFlag,
      this.offerType,
      this.decrementFlag,
      this.productId,
      this.productName,
      this.productSmallImg,
      this.wishlistFlag,
      this.subscriptionFlag,
      this.productDescription,
      this.priceList,
      // this.cartList,
      this.availabilityFlag,
      this.productMRP,
      this.pWeight,
      this.pWeightType,
      this.pSalePrice,
      this.prodPriceId,
      this.qty,
      this.minValue,
      this.maxValue,
      this.aboutProduct,
      this.productBenefits,
      this.storageUses,
      this.otherProductInfo,
      this.variableWeight,
      this.weightDetails,
      this.wPrice,
      this.wMRP});

  Data.fromJson(Map<String, dynamic> json) {
    discountValue = json['DiscountValue'];
    discountFlag = json['DiscountFlag'];
    offerType = json['OfferType'];
    decrementFlag = json['DecrementFlag'];
    productId = json['product_id'];
    productName = json['product_name'];
    productSmallImg = json['product_small_img'];
    wishlistFlag = json['Wishlist_Flag'];
    subscriptionFlag = json['Subscription_Flag'];
    productDescription = json['ProductDescription'];
    if (json['PriceList'] != null) {
      priceList = <PriceList>[];
      json['PriceList'].forEach((v) {
        priceList!.add(PriceList.fromJson(v));
      });
    }
    // if (json['CartList'] != null) {
    //   cartList = <Null>[];
    //   json['CartList'].forEach((v) {
    //     cartList!.add(new Null.fromJson(v));
    //   });
    // }
    availabilityFlag = json['AvailabilityFlag'];
    productMRP = json['product_MRP'];
    pWeight = json['P_Weight'];
    pWeightType = json['P_Weight_type'];
    pSalePrice = json['P_SalePrice'];
    prodPriceId = json['prod_price_id'];
    qty = json['qty'];
    minValue = json['MinValue'];
    maxValue = json['MaxValue'];
    aboutProduct = json['AboutProduct'];
    productBenefits = json['ProductBenefits'];
    storageUses = json['StorageUses'];
    otherProductInfo = json['OtherProductInfo'];
    variableWeight = json['VariableWeight'];
    weightDetails = json['WeightDetails'];
    wPrice = json['WPrice'];
    wMRP = json['WMRP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DiscountValue'] = discountValue;
    data['DiscountFlag'] = discountFlag;
    data['OfferType'] = offerType;
    data['DecrementFlag'] = decrementFlag;
    data['product_id'] = productId;
    data['product_name'] = productName;
    data['product_small_img'] = productSmallImg;
    data['Wishlist_Flag'] = wishlistFlag;
    data['Subscription_Flag'] = subscriptionFlag;
    data['ProductDescription'] = productDescription;
    if (priceList != null) {
      data['PriceList'] = priceList!.map((v) => v.toJson()).toList();
    }
    // if (this.cartList != null) {
    //   data['CartList'] = this.cartList!.map((v) => v.toJson()).toList();
    // }
    data['AvailabilityFlag'] = availabilityFlag;
    data['product_MRP'] = productMRP;
    data['P_Weight'] = pWeight;
    data['P_Weight_type'] = pWeightType;
    data['P_SalePrice'] = pSalePrice;
    data['prod_price_id'] = prodPriceId;
    data['qty'] = qty;
    data['MinValue'] = minValue;
    data['MaxValue'] = maxValue;
    data['AboutProduct'] = aboutProduct;
    data['ProductBenefits'] = productBenefits;
    data['StorageUses'] = storageUses;
    data['OtherProductInfo'] = otherProductInfo;
    data['VariableWeight'] = variableWeight;
    data['WeightDetails'] = weightDetails;
    data['WPrice'] = wPrice;
    data['WMRP'] = wMRP;
    return data;
  }
}

class PriceList {
  dynamic prodPriceId;
  dynamic proId;
  String? productMRP;
  String? mRPValue;
  String? productWeight;
  String? productWeightType;
  bool? availabilityFlag;
  dynamic qty;

  PriceList(
      {this.prodPriceId,
      this.proId,
      this.productMRP,
      this.mRPValue,
      this.productWeight,
      this.productWeightType,
      this.availabilityFlag,
      this.qty});

  PriceList.fromJson(Map<String, dynamic> json) {
    prodPriceId = json['prod_price_id'];
    proId = json['Pro_id'];
    productMRP = json['product_MRP'];
    mRPValue = json['MRPValue'];
    productWeight = json['product_weight'];
    productWeightType = json['product_weight_type'];
    availabilityFlag = json['AvailabilityFlag'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['prod_price_id'] = prodPriceId;
    data['Pro_id'] = proId;
    data['product_MRP'] = productMRP;
    data['MRPValue'] = mRPValue;
    data['product_weight'] = productWeight;
    data['product_weight_type'] = productWeightType;
    data['AvailabilityFlag'] = availabilityFlag;
    data['qty'] = qty;
    return data;
  }
}
